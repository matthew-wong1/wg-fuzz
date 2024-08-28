struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
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

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, true), vec3<f32>(221f, -239f, 677f), vec3<i32>(-1i, -1i, -6591i));

var<private> global1: array<vec2<u32>, 7>;

var<private> global2: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true));

var<private> global3: array<vec2<u32>, 31>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_2(select(vec2<bool>(true, true), global0.a, select(select(global0.a, select(vec2<bool>(global0.a.x, true), global0.a, false), global0.a.x), select(!global0.a, select(vec2<bool>(global0.a.x, global0.a.x), global0.a, true), !global0.a), true)), global0.b, ~vec3<i32>(-(~u_input.a.x), -2147483647i, -global0.c.x));
    var var_1 = Struct_1(!select(!select(vec3<bool>(true, global0.a.x, true), vec3<bool>(var_0.a.x, var_0.a.x, global0.a.x), vec3<bool>(var_0.a.x, true, var_0.a.x)), vec3<bool>(u_input.a.x < u_input.a.x, true, any(vec4<bool>(true, global0.a.x, false, false))), false), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-811f, 1536f, _wgslsmith_f_op_f32(var_0.b.x * -1099f))), _wgslsmith_f_op_vec3_f32(-var_0.b)), var_0.a.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1717f)), _wgslsmith_f_op_f32(round(global0.b.x)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1047f + global0.b.x), var_1.b.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.x), global0.b.x)))));
    let var_3 = Struct_1(!var_1.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -876f, -2239f)), global0.b)))), !(~var_0.c.x != _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global0.c.yy, vec2<i32>(0i, 10259i)), var_0.c.zx)));
    var var_4 = var_3;
    return var_4.a;
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_1(!func_3(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b.x, -174f, 371f))), global0.b)) + vec3<f32>(-558f, _wgslsmith_div_f32(global0.b.x, global0.b.x), 264f)) + _wgslsmith_f_op_vec3_f32(-global0.b)), true);
    var var_1 = Struct_3(Struct_1(select(var_0.a, !var_0.a, !var_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) - var_0.b), true), Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, -685f, global0.b.x) + global0.b) * var_0.b) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-490f, var_0.b.x, 1648f), _wgslsmith_f_op_vec3_f32(-global0.b), !vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)))), !any(var_0.a) | any(global2[_wgslsmith_index_u32(~54723u, 17u)])), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(88073u, ~u_input.b, u_input.e), vec3<u32>(_wgslsmith_clamp_u32(11368u, u_input.b, u_input.e), ~19800u, u_input.e))), var_0.c, arg_0);
    var var_2 = Struct_2(vec2<bool>(var_0.c, false), vec3<f32>(var_1.a.b.x, -1028f, -745f), _wgslsmith_add_vec3_i32(u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(select(global0.c.x, arg_0.x, true), ~var_1.e.x, ~0i), min(_wgslsmith_mult_vec3_i32(var_1.e.zwy, vec3<i32>(u_input.a.x, u_input.a.x, 0i)), -vec3<i32>(10060i, u_input.a.x, var_1.e.x)))));
    let var_3 = all(vec3<bool>(var_1.a.c, true, var_2.a.x));
    global1 = array<vec2<u32>, 7>();
    return Struct_2(vec2<bool>(true, any(select(vec4<bool>(global0.a.x, true, var_3, true), select(vec4<bool>(var_2.a.x, var_3, false, var_3), global2[_wgslsmith_index_u32(var_1.c.x, 17u)], true), !global2[_wgslsmith_index_u32(var_1.c.x, 17u)]))), _wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_f_op_vec3_f32(-var_1.b.b)), -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_1.e.x >> (var_1.c.x % 32u), _wgslsmith_dot_vec4_i32(arg_0, arg_0)), abs(u_input.a | var_2.c)));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> Struct_3 {
    let var_0 = -2147483647i;
    let var_1 = var_0;
    global3 = array<vec2<u32>, 31>();
    global2 = array<vec4<bool>, 17>();
    let var_2 = arg_0;
    return Struct_3(Struct_1(select(select(vec3<bool>(global0.a.x, true, true), vec3<bool>(arg_0, global0.a.x, false), true), vec3<bool>(any(vec3<bool>(false, arg_1.a.x, arg_0)), global0.a.x & true, true), vec3<bool>(true, any(global2[_wgslsmith_index_u32(arg_2, 17u)]), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.b, vec3<f32>(global0.b.x, -1575f, global0.b.x), vec3<bool>(var_2, global0.a.x, arg_1.a.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_1.b.x, -542f))) + arg_1.b), select(select(any(global2[_wgslsmith_index_u32(4294967295u, 17u)]), true, u_input.b != 0u), var_2, true)), Struct_1(vec3<bool>(any(select(global2[_wgslsmith_index_u32(u_input.c, 17u)], vec4<bool>(false, arg_0, true, false), global2[_wgslsmith_index_u32(0u, 17u)])), true | (true | arg_1.a.x), all(vec3<bool>(var_2, false, arg_1.a.x))), global0.b, global0.a.x), ~(~vec3<u32>(~u_input.b, 1071u, 15639u)), func_3().x != (all(select(global2[_wgslsmith_index_u32(0u, 17u)], vec4<bool>(arg_0, arg_0, true, global0.a.x), var_2)) && all(!global2[_wgslsmith_index_u32(1u, 17u)])), _wgslsmith_sub_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(23279i, 30286i, var_0, -18766i), vec4<i32>(var_0, 475i, -29302i, -67163i)), vec4<i32>(0i, -1i, var_0, global0.c.x) << (vec4<u32>(4294967295u, 112775u, arg_2, 4294967295u) % vec4<u32>(32u)), false) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, 11699u, 4294967295u, 22842u), vec4<u32>(u_input.c, 43768u, 25389u, arg_2)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 45972i, 13778i), vec4<i32>(-25725i, -1i, arg_1.c.x, global0.c.x)), vec4<i32>(1i, var_0, 29028i, 9405i) << (vec4<u32>(0u, 1u, arg_2, u_input.c) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(max(vec4<i32>(var_1, u_input.a.x, 0i, u_input.a.x), vec4<i32>(var_0, -10732i, 1i, 30649i)), firstLeadingBit(vec4<i32>(arg_1.c.x, u_input.a.x, global0.c.x, 34230i))))));
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = select(global2[_wgslsmith_index_u32(~(~u_input.b), 17u)], vec4<bool>(true, true, global0.a.x, arg_0), false);
    var var_1 = func_4(false, func_2(reverseBits(vec4<i32>(u_input.a.x, global0.c.x, -1i, u_input.a.x) ^ vec4<i32>(u_input.a.x, -12746i, u_input.a.x, u_input.a.x))), ~max(~(~45981u), abs(firstLeadingBit(u_input.d))));
    global1 = array<vec2<u32>, 7>();
    return Struct_3(var_1.a, var_1.a, select(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), global3[_wgslsmith_index_u32(var_1.c.x, 31u)]), var_1.c.x, select(18361u, 1u, false)), var_1.c, !(!arg_0) | all(!global2[_wgslsmith_index_u32(66866u, 17u)])), arg_0, var_1.e | vec4<i32>(-2147483647i, (0i << (u_input.b % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, var_1.c.x, 68612u, u_input.b), vec4<u32>(u_input.c, var_1.c.x, 47260u, 4294967295u)) % 32u), 2147483647i << (var_1.c.x % 32u), firstTrailingBit(_wgslsmith_dot_vec2_i32(var_1.e.wz, u_input.a.xy))));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = arg_2.a;
    var var_1 = Struct_4(arg_2.a.b.x);
    let var_2 = Struct_4(arg_1);
    let var_3 = ~vec3<u32>(arg_2.c.x, arg_2.c.x >> (u_input.c % 32u), u_input.b);
    var var_4 = true;
    return func_4(true, Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(abs(global0.b)), u_input.a), 54526u);
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: vec3<i32>, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(true, false, u_input.a.x <= -(u_input.a.x ^ 1i)), global0.b, !(!arg_3.x));
    let var_1 = Struct_4(arg_0.a.b.x);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(exp2(arg_0.b.b.x)));
    var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-655f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.b.x - global0.b.x) * func_1(true).b.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -430f))))));
    let var_3 = _wgslsmith_mod_vec3_i32(-func_1(true).e.zxw, arg_2);
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(global0.a.x, -596f, func_1(global0.a.x)), ~(-36628i), u_input.a, vec2<bool>(!global0.a.x | global0.a.x, global0.a.x));
    let var_1 = u_input.c;
    global3 = array<vec2<u32>, 31>();
    var var_2 = true;
    var var_3 = 1903f;
    var_3 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x);
}

