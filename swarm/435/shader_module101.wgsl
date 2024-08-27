struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 1> = array<Struct_5, 1>(Struct_5(Struct_2(1285f, vec4<bool>(true, false, false, true), true, vec4<u32>(41263u, 30817u, 55434u, 15495u))));

var<private> global1: array<i32, 19>;

var<private> global2: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_5, arg_1: i32) -> u32 {
    var var_0 = u_input.b.yx;
    var var_1 = Struct_4(Struct_2(arg_0.a.a, vec4<bool>(!select(arg_0.a.c, arg_0.a.b.x, true), all(arg_0.a.b), _wgslsmith_f_op_f32(-492f - arg_0.a.a) == -802f, !(!arg_0.a.b.x)), arg_0.a.b.x, select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 1u, 51719u, 54569u), vec4<u32>(u_input.d, u_input.b.x, 0u, arg_0.a.d.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, u_input.d, var_0.x, 1u), vec4<u32>(0u, 25107u, 0u, u_input.b.x)), arg_0.a.b.x)));
    var var_2 = var_1.a;
    var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, 1u), vec3<u32>(arg_0.a.d.x, var_0.x, var_1.a.d.x)), abs(u_input.d)) | u_input.b.wx, arg_0.a.d.wy), vec2<u32>(1u, var_1.a.d.x));
    var var_3 = select(!arg_0.a.b.zz, !vec2<bool>(var_2.c, true), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(698f + -1512f)) != _wgslsmith_f_op_f32(-1376f - _wgslsmith_f_op_f32(abs(var_1.a.a)))));
    return _wgslsmith_dot_vec2_u32(min(~arg_0.a.d.zy, vec2<u32>(19860u, ~0u)), ~reverseBits(~vec2<u32>(0u, var_1.a.d.x)) >> (var_2.d.yz % vec2<u32>(32u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>) -> i32 {
    var var_0 = ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-34025i, 1i, global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(arg_0.x, 19u)]), vec4<i32>(-69792i, u_input.a, 19055i, global1[_wgslsmith_index_u32(42319u, 19u)])) & ((-2147483647i ^ global1[_wgslsmith_index_u32(4294967295u, 19u)]) | reverseBits(-14793i)), -(~1i));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~func_3(Struct_5(Struct_2(arg_1.x, vec4<bool>(false, true, false, false), false, vec4<u32>(0u, 41846u, arg_0.x, arg_0.x))), _wgslsmith_add_i32(-1i, 6159i)) >> (_wgslsmith_add_u32(~(~u_input.d), ~_wgslsmith_mult_u32(37776u, u_input.b.x)) % 32u), countOneBits(firstTrailingBit(abs(4294967295u))) ^ u_input.d), 1u)];
    global1 = array<i32, 19>();
    var var_2 = arg_1.x;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(318f, arg_1.x)), _wgslsmith_f_op_f32(abs(469f))))), arg_1.x)), select(vec4<bool>(!(true || var_1.a.b.x), false, all(select(var_1.a.b.yz, vec2<bool>(true, var_1.a.c), var_1.a.b.zy)), true), var_1.a.b, var_1.a.b), true, min(_wgslsmith_clamp_vec4_u32(~var_1.a.d, ~vec4<u32>(var_1.a.d.x, var_1.a.d.x, arg_0.x, 4030u), vec4<u32>(1u, var_1.a.d.x, u_input.b.x, 4294967295u)) ^ arg_0, vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(4294967295u, u_input.b.x, 0u, u_input.d)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.d.x, arg_0.x, arg_0.x), vec3<u32>(66959u, arg_0.x, var_1.a.d.x)), max(16640u, 0u), 1u) ^ vec4<u32>(u_input.b.x, ~u_input.b.x, ~1u, ~u_input.b.x)));
    return u_input.a;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>) -> Struct_4 {
    var var_0 = all(!vec2<bool>(arg_0 != arg_0, true)) && arg_1.x;
    var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-145f, -381f)), -2044f, -349f, -943f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2705f, 177f, 1000f, 943f))))), vec4<f32>(_wgslsmith_f_op_f32(abs(585f)), 669f, 1f, -377f)));
    let var_2 = all(!vec2<bool>(arg_1.x, -14336i <= (1i ^ global1[_wgslsmith_index_u32(0u, 19u)])));
    global0 = array<Struct_5, 1>();
    return Struct_4(Struct_2(var_1.x, vec4<bool>(true, arg_1.x, true, var_2), false, u_input.b));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_4) -> Struct_1 {
    var var_0 = max(vec2<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b.xxy, u_input.b.wxz)), vec2<u32>(_wgslsmith_mult_u32(~arg_3.a.d.x, ~arg_3.a.d.x), u_input.b.x)) ^ vec2<u32>(50294u, arg_3.a.d.x);
    global0 = array<Struct_5, 1>();
    global0 = array<Struct_5, 1>();
    var var_1 = 1i;
    let var_2 = _wgslsmith_f_op_f32(max(arg_3.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-340f)) - arg_2))));
    return Struct_1(true, arg_0.b);
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global2 = array<Struct_3, 18>();
    global1 = array<i32, 19>();
    global2 = array<Struct_3, 18>();
    let var_0 = func_4(_wgslsmith_dot_vec4_i32(~(max(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], -8138i, 2147483647i, u_input.a), vec4<i32>(u_input.a, -2147483647i, 2147483647i, -37287i)) ^ -vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], u_input.c.x, -1i, -2147483647i)), min(vec4<i32>(~20431i, 0i, u_input.a, reverseBits(u_input.c.x)), ~max(vec4<i32>(u_input.c.x, u_input.c.x, global1[_wgslsmith_index_u32(52570u, 19u)], -82939i), vec4<i32>(u_input.c.x, -48524i, -31617i, u_input.a)))), !vec2<bool>(true, any(select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(arg_2.a, false), false)))).a;
    let var_1 = u_input.a;
    return Struct_1(arg_2.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(func_4(var_1, vec2<bool>(arg_2.a, var_0.b.x)).a.a, _wgslsmith_f_op_f32(f32(-1f) * -736f), var_0.a, _wgslsmith_f_op_f32(arg_2.b.x + arg_1.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.b * arg_1.b))), arg_2.b, var_0.b)));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(618f, -2085f)))))));
    global2 = array<Struct_3, 18>();
    let var_1 = func_6(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), func_5(Struct_1(true || any(vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0, arg_0))), vec2<bool>(true, true), -868f, func_4(func_2(~vec4<u32>(2905u, u_input.b.x, 4294967295u, 1u), arg_0), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)))), func_5(func_5(func_5(Struct_1(true, vec4<f32>(arg_0.x, var_0, var_0, var_0)), vec2<bool>(true, true), -1039f, Struct_4(Struct_2(var_0, vec4<bool>(false, true, true, false), true, vec4<u32>(0u, 1u, 33119u, 13508u)))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), -1004f, Struct_4(Struct_2(1868f, vec4<bool>(true, true, true, false), true, vec4<u32>(u_input.d, u_input.b.x, u_input.d, 15341u)))), func_4(u_input.c.x, vec2<bool>(true, true)).a.b.wx, 173f, Struct_4(Struct_2(_wgslsmith_f_op_f32(-arg_0.x), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 55562u, 1u, u_input.b.x), u_input.b)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x + var_1.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-999f, _wgslsmith_f_op_f32(var_1.b.x * 319f))), -1243f)), _wgslsmith_f_op_f32(1187f - -293f), -1378f));
    let var_3 = select(vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(u_input.d), u_input.b.x), 1u, u_input.b.x), vec3<u32>(_wgslsmith_mult_u32(u_input.d, _wgslsmith_sub_u32(0u, u_input.b.x)), _wgslsmith_mult_u32(u_input.d, 2255u) >> (u_input.d % 32u), 58347u), !func_4(2147483647i, vec2<bool>(true, false)).a.b.wwz) << (~u_input.b.wxx % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.x)) - _wgslsmith_f_op_f32(abs(-1279f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-671f)), var_1.b.x) - _wgslsmith_f_op_f32(652f - var_1.b.x))), func_6(u_input.b, var_1, func_6(vec4<u32>(~1u, ~u_input.d, var_3.x, _wgslsmith_mult_u32(4294967295u, var_3.x)), func_5(var_1, !vec2<bool>(false, var_1.a), _wgslsmith_f_op_f32(var_1.b.x + arg_0.x), func_4(2147483647i, vec2<bool>(false, true))), Struct_1(func_4(global1[_wgslsmith_index_u32(var_3.x, 19u)], vec2<bool>(var_1.a, true)).a.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-585f, -962f, -1000f, -1176f) + var_1.b)))).b.x));
}

fn func_7(arg_0: f32) -> bool {
    var var_0 = Struct_2(arg_0, vec4<bool>(!any(func_4(4155i, vec2<bool>(true, true)).a.b.zz), true, !all(vec4<bool>(true, false, true, false)), false), true, abs(~vec4<u32>(~u_input.d, _wgslsmith_div_u32(0u, u_input.d), 26859u, 1u ^ u_input.b.x)));
    let var_1 = Struct_3(!(!(!(!var_0.b.zx))));
    var var_2 = var_0.c;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 19>();
    var var_0 = func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-897f, -179f, -552f, 1078f), vec4<f32>(271f, 1000f, 241f, 1737f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(2500f)))) + 1785f)));
    let var_1 = any(select(vec4<bool>(-960f < _wgslsmith_f_op_f32(trunc(1854f)), any(func_4(1i, vec2<bool>(false, true)).a.b.yxy), 81662u == countOneBits(u_input.d), !(u_input.d <= 1u)), func_4(abs(-22409i) << (max(u_input.b.x, 8969u) % 32u), select(vec2<bool>(true, true), vec2<bool>(true, true), true)).a.b, select(true, 1u > _wgslsmith_mod_u32(u_input.b.x, 107033u), false)));
    var var_2 = func_6(select(u_input.b, ~_wgslsmith_mult_vec4_u32(func_4(-2147483647i, vec2<bool>(true, var_1)).a.d, vec4<u32>(u_input.d, 9139u, u_input.d, u_input.d) ^ u_input.b), ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 4294967295u), vec3<u32>(u_input.b.x, 16349u, u_input.d)), 19u)] != countOneBits(~0i)), func_5(func_6(abs(vec4<u32>(4294967295u, u_input.d, 0u, 85506u) >> (vec4<u32>(u_input.d, u_input.d, 41171u, u_input.b.x) % vec4<u32>(32u))), func_6(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, 44607u, 0u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.d)), func_6(u_input.b, Struct_1(false, vec4<f32>(1100f, 1000f, -1122f, -411f)), Struct_1(true, vec4<f32>(-779f, 793f, 385f, 1573f))), func_6(u_input.b, Struct_1(var_1, vec4<f32>(-557f, -921f, -941f, -330f)), Struct_1(var_1, vec4<f32>(-1430f, 956f, -241f, -138f)))), func_5(Struct_1(true, vec4<f32>(2229f, 232f, 433f, -1323f)), vec2<bool>(true, var_1), _wgslsmith_f_op_f32(sign(-1712f)), Struct_4(Struct_2(-350f, vec4<bool>(true, var_1, var_1, var_1), var_1, vec4<u32>(u_input.b.x, u_input.b.x, 22740u, u_input.d))))), vec2<bool>(u_input.c.x < global1[_wgslsmith_index_u32(u_input.d, 19u)], any(vec3<bool>(true, var_1, true))), -725f, func_4(u_input.c.x, !(!vec2<bool>(var_1, false)))), func_5(Struct_1(select(var_1, true, var_1) && false, vec4<f32>(1f, 1f, 1f, 1f)), !vec2<bool>(!var_1, true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-func_5(Struct_1(false, vec4<f32>(-636f, -780f, -731f, -1898f)), vec2<bool>(true, true), 298f, Struct_4(Struct_2(-1100f, vec4<bool>(var_1, false, var_1, false), true, u_input.b))).b.x))), Struct_4(func_4(~u_input.c.x, vec2<bool>(var_1, var_1)).a)));
    var var_3 = u_input.c.x == -u_input.c.x;
    let var_4 = u_input.d;
    var var_5 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.b.x)) - 1000f), var_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(399f * -365f) - var_2.b.x))), vec4<bool>(true, select(var_2.a, var_2.a, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, var_2.a), true))), true, true), true, max(u_input.b, ~u_input.b));
    var_2 = func_5(Struct_1(1u > min(~u_input.b.x, 0u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.a + var_2.b.x) + var_5.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.x), var_2.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-116f + 166f), _wgslsmith_f_op_f32(f32(-1f) * -2600f))), -341f)), !var_5.b.yx, var_2.b.x, Struct_4(func_4(-3796i, !func_4(19990i, vec2<bool>(var_1, var_5.c)).a.b.xx).a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec4_f32(select(var_2.b, var_2.b, var_5.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_2.b.xww))))), select(~min(-vec4<i32>(u_input.c.x, 43997i, 1i, u_input.c.x), vec4<i32>(global1[_wgslsmith_index_u32(var_5.d.x, 19u)], global1[_wgslsmith_index_u32(var_5.d.x, 19u)], global1[_wgslsmith_index_u32(var_4, 19u)], 1i) ^ vec4<i32>(global1[_wgslsmith_index_u32(var_5.d.x, 19u)], u_input.a, u_input.c.x, 2147483647i)), vec4<i32>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(22895u, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)], u_input.c.x), vec4<i32>(global1[_wgslsmith_index_u32(var_5.d.x, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], 0i)), -u_input.c.x), 1i, -31033i, -global1[_wgslsmith_index_u32(1u, 19u)]), !vec4<bool>(var_5.d.x < var_4, true, false, false)));
}

