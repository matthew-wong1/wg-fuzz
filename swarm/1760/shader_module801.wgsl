struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_3, 1>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(ceil(124f)), _wgslsmith_f_op_f32(sign(arg_1)), arg_1)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1000f)))), arg_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(452f, arg_1, 1717f))), vec3<f32>(2335f, _wgslsmith_f_op_f32(arg_1 + -1682f), _wgslsmith_f_op_f32(trunc(arg_1))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-496f, arg_1, 385f)))), vec3<u32>(3188u, global0.x, 4294967295u));
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-728f, 251f) * _wgslsmith_f_op_vec2_f32(-var_0.b))) - var_0.b), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_0.c * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 322f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.a.x, -1006f) + var_0.c))), var_0.a)), vec3<u32>(~max(4294967295u, _wgslsmith_sub_u32(1u, global0.x)), var_0.d.x, 73340u));
    global0 = vec2<u32>(4294967295u, var_0.d.x);
    let var_2 = min(u_input.b >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(max(18676u, 71318u), max(39068u, global0.x), _wgslsmith_div_u32(33412u, 39556u), var_0.d.x ^ global0.x), ~(vec4<u32>(0u, 0u, 42023u, 6212u) << (vec4<u32>(global0.x, var_1.d.x, global0.x, global0.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, global0.x, 4294967295u, 4294967295u), abs(vec4<u32>(global0.x, 34829u, 19139u, 1u)))) % vec4<u32>(32u)), min(-abs(u_input.b), _wgslsmith_mult_vec4_i32(u_input.b, _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(7027i, arg_0, -28353i, u_input.b.x)))) & vec4<i32>(u_input.b.x, _wgslsmith_div_i32(14205i, min(-2147483647i, 2147483647i)), 0i, ~_wgslsmith_dot_vec4_i32(u_input.b, u_input.b)));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-646f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(min(arg_1, 188f)))))));
    return ~(~var_0.d);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: Struct_2) -> vec3<bool> {
    global0 = vec2<u32>(abs(4294967295u), arg_0.x);
    var var_0 = !(!select(select(!vec3<bool>(false, arg_1.x, true), select(vec3<bool>(arg_1.x, false, arg_1.x), arg_1.xwx, arg_1.x), !vec3<bool>(false, arg_1.x, false)), select(arg_1.xxy, !arg_1.zyw, arg_1.wxz), all(vec4<bool>(arg_1.x, true, true, arg_1.x))));
    let var_1 = select(arg_1.yx, var_0.xy, arg_1.zy);
    let var_2 = func_3(abs(~(-_wgslsmith_dot_vec4_i32(u_input.b, u_input.b))), arg_2.a.c.x).x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.a.b.x * arg_2.a.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.a.c.x, 2178f), 1235f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_2.a.c.x)), _wgslsmith_f_op_f32(floor(336f)))), -424f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_2.a.b.x, -1000f, -480f), vec4<f32>(arg_2.a.b.x, arg_2.a.a.x, arg_2.a.c.x, arg_2.a.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1738f, -1457f, arg_2.a.b.x, -704f) + vec4<f32>(-1050f, arg_2.a.b.x, 2043f, 174f)), arg_1))))));
    return !arg_1.zxw;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = !func_4(~_wgslsmith_mult_vec3_u32(func_3(-1i, arg_2.a.a.x), vec3<u32>(global0.x, arg_2.a.d.x, arg_2.a.d.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true && (arg_2.a.c.x <= -477f)), Struct_2(arg_2.a));
    global1 = array<Struct_3, 1>();
    global1 = array<Struct_3, 1>();
    global0 = _wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(33378u, 0u), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_2.a.d.x), vec2<u32>(arg_2.a.d.x, 4294967295u)), max(arg_2.a.d.yz, vec2<u32>(95495u, 85175u)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(5531u, 1u, arg_2.a.d.x, 1u), vec4<u32>(1u, 30023u, 11065u, 76869u)), vec4<u32>(1u, 4294967295u, 22575u, 4294967295u)), 1u), vec2<u32>(~arg_2.a.d.x & ~arg_2.a.d.x, _wgslsmith_sub_u32(1u, arg_2.a.d.x)), countOneBits(arg_2.a.d.zx)));
    var_0 = !select(vec3<bool>(var_0.x && true, all(vec2<bool>(true, var_0.x)), !var_0.x), select(vec3<bool>(true, true, true), select(!vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, false), true), vec3<bool>(true, false, false)), all(vec4<bool>(true, var_0.x, false, true)) & (var_0.x | false)), true);
    return !(!select(!(!vec3<bool>(var_0.x, false, true)), vec3<bool>(!var_0.x, !var_0.x, any(vec4<bool>(false, false, var_0.x, var_0.x))), var_0.x));
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    let var_0 = select(!select(select(vec3<bool>(true, true, true), func_2(-868f, -7694i, Struct_2(Struct_1(vec3<f32>(-553f, 1432f, -239f), vec2<f32>(-450f, -1000f), vec3<f32>(150f, -466f, 314f), vec3<u32>(arg_0.x, global0.x, 1u)))), vec3<bool>(true, false, true)), vec3<bool>(true, 37299u >= global0.x, select(true, true, true)), any(func_4(arg_0, vec4<bool>(false, true, true, true), Struct_2(Struct_1(vec3<f32>(301f, -167f, -531f), vec2<f32>(903f, 154f), vec3<f32>(-927f, -357f, -2023f), vec3<u32>(60368u, global0.x, arg_0.x)))).yz)), select(vec3<bool>(true, true, true), vec3<bool>(!func_4(vec3<u32>(global0.x, arg_0.x, global0.x), vec4<bool>(false, false, false, false), Struct_2(Struct_1(vec3<f32>(521f, -1499f, -183f), vec2<f32>(-217f, 3167f), vec3<f32>(1000f, 1724f, -969f), vec3<u32>(0u, arg_0.x, 0u)))).x, false, all(vec4<bool>(false, true, true, false)) != true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), any(vec2<bool>(true, true)))), any(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false), true)));
    let var_1 = ~(~(-u_input.b.x));
    global1 = array<Struct_3, 1>();
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-867f, _wgslsmith_f_op_f32(-1406f * 2083f), -384f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1711f, -618f, 198f)), var_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-854f, 1011f), vec2<f32>(759f, -401f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1043f, 911f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 690f) + vec2<f32>(-545f, -912f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1047f, -976f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -545f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2548f)), _wgslsmith_f_op_f32(min(-865f, 490f))), _wgslsmith_div_vec3_u32(arg_0, ~arg_0)));
    global1 = array<Struct_3, 1>();
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a.b.x)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.a.a.x * var_2.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.a.x) * _wgslsmith_f_op_f32(-var_2.a.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global0.x;
    global1 = array<Struct_3, 1>();
    var var_1 = u_input.b;
    let var_2 = select(select(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true)), vec4<bool>(true, !all(vec2<bool>(false, false)), !any(vec2<bool>(false, true)), true), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true))), !select(vec4<bool>(true, false, select(false, true, true), true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true)), true), !(!vec4<bool>(false, var_1.x < 53023i, false, true)));
    let var_3 = var_0;
    let x = u_input.a;
    s_output = func_1(~(~max(~vec3<u32>(var_0, global0.x, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0, var_3, 4294967295u), vec3<u32>(33191u, var_0, global0.x)))));
}

