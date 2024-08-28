struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-461f, 621f), _wgslsmith_f_op_f32(min(750f, 1244f)), true))))));
    var var_1 = -_wgslsmith_div_i32(-2147483647i, _wgslsmith_add_i32(1i, max(-34337i, -2147483647i)));
    var var_2 = false;
    let var_3 = -vec2<i32>(_wgslsmith_dot_vec4_i32(min(abs(vec4<i32>(-17291i, 0i, -1i, -25126i)), ~vec4<i32>(12960i, 0i, 67492i, -56472i)), ~vec4<i32>(0i, 0i, -5154i, -2147483647i)), ~(-1i));
    let var_4 = select(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(abs(_wgslsmith_add_i32(-1i, var_3.x)), _wgslsmith_sub_i32(2147483647i, var_3.x)), max(~(-var_3.x), var_3.x), min(var_3.x ^ var_3.x, (var_3.x << (12792u % 32u)) << (_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.yx) % 32u))), firstTrailingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.x, -6418i, var_3.x, -29747i), vec4<i32>(-26097i, 9299i, -30293i, var_3.x), vec4<i32>(var_3.x, var_3.x, var_3.x, var_3.x)), abs(vec4<i32>(var_3.x, var_3.x, 1459i, -8197i)))) >> (max(_wgslsmith_clamp_vec4_u32(~arg_0, arg_0, arg_0), ~vec4<u32>(29524u, u_input.a.x, 47610u, arg_0.x) << (vec4<u32>(arg_0.x, 0u, 0u, 23875u) % vec4<u32>(32u))) % vec4<u32>(32u)), all(vec3<bool>(max(4294967295u, u_input.a.x) <= (u_input.a.x ^ 0u), any(vec3<bool>(false, false, true)), true)));
    return 1u;
}

fn func_2() -> Struct_1 {
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(!any(vec3<bool>(true, false, true)), false), true);
    let var_1 = (~_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(27765u, u_input.a.x, u_input.a.x)), u_input.a) << (vec3<u32>(func_3(vec4<u32>(4294967295u, 17391u, 44799u, 4294967295u)), 47423u, 1u) % vec3<u32>(32u))) | ~_wgslsmith_mod_vec3_u32(~u_input.a, vec3<u32>(reverseBits(u_input.a.x), u_input.a.x, u_input.a.x));
    var var_2 = Struct_2(Struct_1(vec4<i32>(reverseBits(1i), 1i, -39197i, 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(266f, 295f) - vec2<f32>(-359f, -1371f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1200f, 288f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(343f, -117f)))), _wgslsmith_add_vec3_i32(-max(vec3<i32>(5351i, 1i, -41252i), vec3<i32>(-1i, -24460i, 48565i)), -_wgslsmith_div_vec3_i32(vec3<i32>(11429i, 0i, 607i), vec3<i32>(17657i, -2147483647i, 2147483647i)))), -1000f, vec3<i32>(-46622i, _wgslsmith_dot_vec2_i32(countOneBits(select(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-2147483647i, 4953i), var_0)), vec2<i32>(i32(-1i) * -32103i, 19835i)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 46295i, 30570i), vec3<i32>(-1i, 2347i, 1i)), vec3<i32>(1i, 1i, 1i)) << ((var_1.x >> (min(u_input.a.x, u_input.a.x) % 32u)) % 32u)));
    let var_3 = _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, u_input.a.x), firstLeadingBit(u_input.a.zz));
    let var_4 = var_2.a.b;
    return Struct_1(_wgslsmith_sub_vec4_i32(var_2.a.a, firstLeadingBit(vec4<i32>(var_2.a.c.x, max(-1i, 26278i), 1i, -7266i))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1411f, _wgslsmith_f_op_f32(-var_4.x)) * var_2.a.b))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(var_2.c.x), -1i, _wgslsmith_add_i32(var_2.c.x, var_2.a.a.x)), _wgslsmith_add_vec3_i32(var_2.c, var_2.a.a.yzy)), var_2.c.x, var_2.c.x));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_2(Struct_1(arg_1.a.a ^ (vec4<i32>(arg_1.c.x, -1i, arg_1.a.a.x, arg_0) << (vec4<u32>(u_input.a.x, 12743u, 19809u, u_input.a.x) % vec4<u32>(32u))), arg_1.a.b, _wgslsmith_clamp_vec3_i32(arg_1.a.a.yxw, vec3<i32>(~arg_1.a.c.x, -arg_1.c.x, ~9450i), ~(~vec3<i32>(arg_1.c.x, arg_0, -1i)))), arg_1.a.b.x, countOneBits(arg_1.c & arg_1.a.c));
    var var_1 = !select(vec2<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.a.x, 2147483647i, arg_1.a.c.x, arg_0), var_0.a.a) == _wgslsmith_mult_i32(-1i, 1000i), true), vec2<bool>(all(vec4<bool>(true, false, false, true)), select(true, true, true)), !(var_0.a.a.x > arg_0) | (arg_1.a.b.x < _wgslsmith_f_op_f32(exp2(arg_1.b))));
    var_0 = Struct_2(Struct_1(~abs(max(arg_1.a.a, arg_1.a.a)), func_2().b, ~(var_0.a.a.wyw << (vec3<u32>(3576u, 4294967295u, u_input.a.x) % vec3<u32>(32u)))), var_0.a.b.x, firstTrailingBit(select(_wgslsmith_mod_vec3_i32(func_2().c, var_0.c << (vec3<u32>(u_input.a.x, 42173u, 22919u) % vec3<u32>(32u))), min(vec3<i32>(-1i, arg_1.a.c.x, var_0.a.a.x), -arg_1.a.a.wxx), select(!vec3<bool>(false, var_1.x, var_1.x), select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, true, false), vec3<bool>(true, true, var_1.x)), vec3<bool>(true, true, true)))));
    let var_2 = vec2<bool>(var_1.x, select(all(select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(false, var_1.x, false))), var_1.x, var_1.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.b, var_0.b, arg_1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.b.x, var_0.a.b.x, 474f)))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.b, var_0.a.b.x, arg_1.b))))));
    return ~reverseBits(u_input.a.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = !vec3<bool>(true, true || any(vec2<bool>(true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))));
    let var_1 = arg_0.zz;
    var var_2 = !all(vec3<bool>(select(true, var_0.x, false), all(!var_0.zy), true));
    var var_3 = arg_2;
    var var_4 = !(!var_0.zy);
    return Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(arg_2.c.x, var_3.a.a.x, 2147483647i, -2389i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.a.a.x, -1i, 2147483647i, 0i), vec4<i32>(arg_2.c.x, var_3.c.x, var_3.c.x, arg_2.c.x))), select(arg_2.a.a, vec4<i32>(-1i, var_3.c.x, -15141i, var_3.c.x), var_4.x) & vec4<i32>(-5809i, var_3.a.c.x, arg_2.a.a.x, arg_2.a.a.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.xx - vec2<f32>(var_3.a.b.x, arg_3.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2168f, arg_3.x))))), abs(-(var_3.a.c >> (arg_0.yyz % vec3<u32>(32u))))), 961f, vec3<i32>(abs(-2147483647i), (func_2().c.x & 39500i) << (26684u % 32u), -arg_2.a.c.x));
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    var var_0 = func_5(vec4<u32>(max(~(~42113u), abs(u_input.a.x | 1u)), u_input.a.x, ~u_input.a.x, func_4(arg_0.x, Struct_2(func_2(), _wgslsmith_f_op_f32(trunc(354f)), ~vec3<i32>(3544i, -21809i, -13740i)))), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, 1638f, 578f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -777f, -259f, 526f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-246f, 742f, 1686f, -1119f)), all(vec2<bool>(false, false)))))), Struct_2(Struct_1(vec4<i32>(54875i << (u_input.a.x % 32u), _wgslsmith_div_i32(2147483647i, -1i), arg_0.x, arg_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(264f, 829f) + vec2<f32>(-446f, -355f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-406f, -950f)))), firstLeadingBit(-vec3<i32>(arg_0.x, -1i, 49016i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(714f))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 5734i, 21381i), vec3<i32>(arg_0.x, arg_0.x, 2147483647i)) | vec3<i32>(-1i, 9452i, -2147483647i), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, arg_0.x, arg_0.x), vec3<i32>(-1i, arg_0.x, 1i))), vec3<i32>(~(-1i), i32(-1i) * -10253i, 1i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1267f * -444f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2095f) - 440f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-255f * -527f)), _wgslsmith_f_op_f32(step(1426f, -1042f)))));
    var var_1 = select(true, !any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), !select(true, true, true));
    var_1 = 21105u == _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(10723u, u_input.a.x), func_3(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), u_input.a.x), ~vec3<u32>(u_input.a.x, 1u, 52262u)));
    var var_2 = true;
    var_1 = var_0.a.c.x < var_0.a.c.x;
    return ~var_0.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(true, true == select(true, true, true), true, true));
    var var_1 = 1360f;
    let var_2 = Struct_1(max(abs(~vec4<i32>(-42035i, -27861i, -2147483647i, -4606i)), vec4<i32>(1i, 1i, 0i, _wgslsmith_clamp_i32(20145i, -2147483647i, -51470i))) | min(-(~vec4<i32>(19883i, -1i, -1i, -28489i)), -vec4<i32>(-8938i, -8069i, -54010i, -2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(1644f, 736f), _wgslsmith_f_op_f32(-527f + 1369f)))) * vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(371f, -1182f), _wgslsmith_f_op_f32(-1772f - -1250f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-917f + -554f) * 644f))), select(vec3<i32>(1i, 1i, 1i), ~min(vec3<i32>(18302i, 0i, -1i), vec3<i32>(-2147483647i, 1i, -5577i)), false) ^ vec3<i32>(-func_1(vec2<i32>(0i, -17717i)), _wgslsmith_mult_i32(min(36674i, -1i), firstLeadingBit(8608i)), max(0i, 14549i)));
    let var_3 = vec2<i32>(~(-34122i), -9267i);
    let var_4 = _wgslsmith_f_op_f32(max(func_5(abs(firstLeadingBit(~vec4<u32>(u_input.a.x, 0u, 4294967295u, 3929u))), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), var_2.b.x, _wgslsmith_f_op_f32(step(var_2.b.x, var_2.b.x)), 1f)), Struct_2(var_2, -204f, vec3<i32>(abs(1i), 2147483647i, -var_3.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2529f, var_2.b.x, 1003f, var_2.b.x)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, var_2.b.x, var_2.b.x, var_2.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(592f, -1248f, -547f, 1059f)))))).a.b.x, _wgslsmith_div_f32(var_2.b.x, var_2.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(13164i);
}

