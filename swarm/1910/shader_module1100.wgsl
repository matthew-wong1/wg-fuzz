struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: array<Struct_3, 27>;

var<private> global3: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(9514i, -1i), vec2<i32>(23830i, -21404i), vec2<i32>(2147483647i, 0i), vec2<i32>(-22509i, -1i), vec2<i32>(1i, 2147483647i), vec2<i32>(-2523i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(-8910i, 0i), vec2<i32>(-70250i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 33175i), vec2<i32>(17893i, 2147483647i), vec2<i32>(8970i, 2147483647i), vec2<i32>(i32(-2147483648), 9802i), vec2<i32>(0i, -74721i), vec2<i32>(78912i, -367i), vec2<i32>(2147483647i, 13360i), vec2<i32>(-1582i, -1i), vec2<i32>(1i, 35109i), vec2<i32>(-1i, 54820i), vec2<i32>(16952i, i32(-2147483648)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    global1 = arg_0.e;
    var var_0 = -1i >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~arg_1.b.yy, ~(~vec2<u32>(arg_0.c.a, arg_0.c.a))), ~arg_2.b.x) % 32u);
    var var_1 = Struct_2(_wgslsmith_dot_vec2_u32(arg_1.c.b, countOneBits(u_input.a.yx)), ~(~u_input.a.yz));
    var var_2 = Struct_1(select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, false)), vec2<bool>(true, true), true), arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -210f)), 1385f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1016f + _wgslsmith_f_op_f32(-3011f + -1139f)) * 899f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f) + _wgslsmith_f_op_f32(trunc(-109f))) - _wgslsmith_div_f32(-1113f, _wgslsmith_f_op_f32(-1000f - 1745f)))), 0i);
    let var_3 = var_2.e;
    return _wgslsmith_mult_i32(abs(-33651i), var_2.e);
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> vec4<i32> {
    global1 = arg_0.b.x;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.d.x, arg_3.d.x, -259f, arg_3.d.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c, 2122f, -154f, -1888f)))))));
    global3 = array<vec2<i32>, 20>();
    let var_1 = arg_3.c;
    let var_2 = -1891f;
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(~1i, 9809i), (i32(-1i) * -arg_1) & _wgslsmith_mult_i32(arg_3.e, arg_3.e), _wgslsmith_add_i32(1i, -arg_1), arg_1), vec4<i32>(1i, -2147483647i, func_3(Struct_3(Struct_2(0u, vec2<u32>(4294967295u, 0u)), vec3<u32>(arg_2.a, arg_0.c.b.x, 4294967295u) | vec3<u32>(arg_2.b.x, arg_3.b, 0u), Struct_2(u_input.a.x, vec2<u32>(38053u, 0u)), _wgslsmith_mult_u32(arg_0.d, arg_2.b.x), arg_3.b << (arg_0.b.x % 32u)), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(6489u, 35800u), 27u)], Struct_3(Struct_2(arg_0.b.x, arg_2.b), u_input.a, arg_0.a, 8690u, ~1u)), arg_1), firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(arg_3.e, 46004i, arg_1, arg_1), vec4<i32>(4841i, -2147483647i, -22523i, -3640i), vec4<bool>(true, false, arg_3.a.x, true)), ~vec4<i32>(arg_1, -34584i, arg_3.e, arg_1), firstLeadingBit(vec4<i32>(15146i, 2147483647i, -2147483647i, 60793i))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = firstTrailingBit((i32(-1i) * -arg_0.e) ^ ~(-2147483647i));
    let var_1 = Struct_1(arg_0.a, 59872u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.d.x + 1082f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), arg_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-583f, 1057f) + vec2<f32>(-394f, arg_0.c)))))), _wgslsmith_dot_vec4_i32(vec4<i32>(min(-11077i, -1i), arg_0.e << (u_input.a.x % 32u), reverseBits(0i), 31029i), firstTrailingBit(func_2(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], arg_0.e, Struct_2(1u, vec2<u32>(4294967295u, 4294967295u)), arg_0))) | -2147483647i);
    var var_2 = Struct_1(select(select(select(select(arg_0.a, arg_1.yz, false), !vec2<bool>(arg_0.a.x, var_1.a.x), !arg_1.x), select(arg_0.a, vec2<bool>(false, arg_1.x), vec2<bool>(true, true)), !var_1.a.x), vec2<bool>(any(arg_0.a), var_1.a.x), all(select(vec2<bool>(true, false), arg_0.a, arg_1.xy))), select(44640u, _wgslsmith_clamp_u32(var_1.b, _wgslsmith_div_u32(0u, u_input.a.x), arg_0.b | 5203u), !arg_0.a.x) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.a.x, u_input.a.x, 24637u), u_input.a, arg_1), arg_2.wxx & vec3<u32>(1u, arg_2.x, u_input.a.x), max(vec3<u32>(u_input.a.x, var_1.b, 46271u), arg_2.zxx)), u_input.a) % 32u), _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + _wgslsmith_f_op_f32(-var_1.d.x)) - 336f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.d.x)), -521f) * arg_0.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1547f, var_1.c) * var_1.d))), -(-5359i << (max(_wgslsmith_sub_u32(52118u, 0u), arg_2.x) % 32u)));
    return arg_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_3 {
    var var_0 = 1f;
    let var_1 = ~_wgslsmith_sub_u32(arg_0.x, 0u);
    global0 = -9189i;
    var var_2 = func_1(arg_2, select(vec3<bool>(any(arg_2.a), arg_2.a.x, arg_2.a.x), select(vec3<bool>(true, true, arg_2.a.x), vec3<bool>(true, all(vec3<bool>(arg_2.a.x, false, true)), func_1(Struct_1(arg_2.a, arg_1.d, arg_2.d.x, arg_2.d, arg_2.e), vec3<bool>(true, true, false), vec4<u32>(23425u, 4294967295u, 4294967295u, u_input.a.x)).a.x), any(vec3<bool>(true, true, true))), vec3<bool>(true, arg_2.a.x, all(vec4<bool>(true, arg_2.a.x, true, false)))), abs(vec4<u32>(1u, ~1u, ~6965u, _wgslsmith_sub_u32(arg_2.b, max(4294967295u, arg_2.b)))));
    let var_3 = arg_1;
    return global2[_wgslsmith_index_u32(~(~(~arg_2.b)), 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(false, true), 1u, 748f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(-632f + -1000f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -149f) * vec2<f32>(2043f, -655f))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-383f, -1000f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-748f, -268f), vec2<f32>(144f, 396f), false)))))), _wgslsmith_div_i32(0i, _wgslsmith_clamp_i32(56108i, firstLeadingBit(-17006i), -11596i)));
    let var_1 = func_4(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, 15534u, 26827u), ~var_0.b), countOneBits(abs(u_input.a.x))) >> (u_input.a.yz % vec2<u32>(32u)), global2[_wgslsmith_index_u32(~0u, 27u)], func_1(var_0, vec3<bool>(var_0.a.x, any(!vec4<bool>(false, false, false, var_0.a.x)), !(var_0.d.x >= -275f)), ~vec4<u32>(23472u, 82435u << (var_0.b % 32u), ~u_input.a.x, _wgslsmith_add_u32(15523u, 1u))));
    var var_2 = 2147483647i;
    var_2 = var_0.e;
    var var_3 = vec4<bool>(all(select(!vec4<bool>(true, var_0.a.x, var_0.a.x, false), vec4<bool>(func_1(var_0, vec3<bool>(true, true, var_0.a.x), vec4<u32>(1u, 1u, var_0.b, 0u)).a.x, any(vec4<bool>(false, var_0.a.x, false, var_0.a.x)), var_0.a.x, select(var_0.a.x, var_0.a.x, true)), var_0.a.x && var_0.a.x)), var_0.a.x, var_1.d <= select(var_1.d, 72810u, true), all(vec3<bool>(var_0.a.x, var_0.a.x, select(true, var_0.b != var_1.b.x, func_1(Struct_1(vec2<bool>(var_0.a.x, false), var_0.b, var_0.d.x, vec2<f32>(560f, -468f), 0i), vec3<bool>(false, false, true), vec4<u32>(var_0.b, 25112u, u_input.a.x, 4294967295u)).a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0.d.x, func_1(var_0, !(!vec3<bool>(false, var_3.x, var_3.x)), ~reverseBits(vec4<u32>(var_1.a.a, var_1.c.b.x, var_1.a.a, 1u))).d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c * var_0.d.x), -1485f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1252f, var_0.c)), -483f)))), max(vec4<u32>(func_4(var_1.c.b, func_4(u_input.a.xy, Struct_3(var_1.a, vec3<u32>(86879u, 37508u, 97745u), Struct_2(4294967295u, u_input.a.zz), 109090u, var_0.b), Struct_1(var_0.a, 87057u, 1023f, vec2<f32>(var_0.c, -1641f), -15722i)), var_0).e, 75454u, var_0.b, reverseBits(~4294967295u)), vec4<u32>(var_1.e, ~69953u << (abs(var_1.c.a) % 32u), u_input.a.x & 4294967295u, 66739u)));
}

