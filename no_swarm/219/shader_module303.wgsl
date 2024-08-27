struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_4 = Struct_4(vec2<u32>(0u, 42823u), false, vec3<u32>(24811u, 11932u, 4294967295u), vec2<f32>(-983f, 849f));

var<private> global2: array<Struct_4, 30>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<bool>) -> i32 {
    global2 = array<Struct_4, 30>();
    global2 = array<Struct_4, 30>();
    return 17991i;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>) -> i32 {
    let var_0 = Struct_3(Struct_1(u_input.b, max(vec2<u32>(8255u, ~23189u), max(global1.c.xz, global1.a)), _wgslsmith_mult_vec2_i32(~countOneBits(vec2<i32>(u_input.d, u_input.d)), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, u_input.d) >> (global1.a % vec2<u32>(32u)))), !all(!vec4<bool>(false, false, global1.b, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-258f, -1936f))), _wgslsmith_sub_vec4_u32(~(reverseBits(vec4<u32>(global1.c.x, 1u, 0u, 15465u)) << ((u_input.b | u_input.b) % vec4<u32>(32u))), ~u_input.b), Struct_1(abs(u_input.b), _wgslsmith_div_vec2_u32(u_input.a, global1.a), ~(~(~vec2<i32>(2147483647i, u_input.d))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.x, arg_1.x))))));
    global2 = array<Struct_4, 30>();
    global1 = global2[_wgslsmith_index_u32(27008u, 30u)];
    let var_1 = Struct_2(u_input.e, -1693f, var_0.c, var_0.a, 1f);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1723f, var_0.a.e.x, -1000f) - vec3<f32>(var_1.e, 330f, arg_1.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 687f, _wgslsmith_f_op_f32(-var_0.c.e.x)))));
    return 11833i << (~var_1.d.a.x % 32u);
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: i32) -> u32 {
    global0 = vec3<f32>(-430f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 934f), global0.x < _wgslsmith_div_f32(-1000f, arg_1.x))))), global0.x);
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(116f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1374f))))));
    global2 = array<Struct_4, 30>();
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_clamp_u32(0u, countOneBits(20609u), ~min(0u, 21823u)), u_input.e, firstTrailingBit(countOneBits(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b))), 4294967295u), ~(~global1.c.zz), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0 >> (u_input.e % 32u), max(arg_3, arg_3)), _wgslsmith_div_vec2_i32(vec2<i32>(arg_3, arg_3), vec2<i32>(2147483647i, arg_3) ^ vec2<i32>(u_input.d, -14660i))) << (u_input.b.yy % vec2<u32>(32u)), true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, arg_2.x) + global1.d))))));
    let var_2 = Struct_5(Struct_3(Struct_1(u_input.b, vec2<u32>(_wgslsmith_mult_u32(34508u, var_1.b.x), 64354u), ~_wgslsmith_sub_vec2_i32(var_1.c, vec2<i32>(-10673i, -2147483647i)), global1.b, global0.yx), vec4<u32>(~var_1.b.x, ~4294967295u, 1435u, 4294967295u & global1.c.x), Struct_1(abs(~var_1.a), abs(var_1.b) >> (~global1.a % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(var_1.c, var_1.c) | _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.c.x, var_1.c.x), vec2<i32>(var_1.c.x, arg_0)), any(!vec2<bool>(var_1.d, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, arg_1.x), arg_1.wx, vec2<bool>(var_1.d, global1.b))), var_1.e))), u_input.b, max(u_input.a.x, ~_wgslsmith_mult_u32(~global1.a.x, ~30442u)), vec3<i32>(u_input.d, _wgslsmith_add_i32(arg_0, -arg_0) & 0i, -func_3(global1.c | vec3<u32>(1u, 4294967295u, u_input.a.x), vec2<f32>(-1590f, 250f))));
    return ~(~u_input.c >> (select(37345u, 0u, !select(var_2.a.c.d, false, true)) % 32u));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: vec4<f32>) -> vec3<f32> {
    var var_0 = func_4(_wgslsmith_clamp_i32(countOneBits(arg_1.d.x), arg_1.d.x, _wgslsmith_add_i32(func_2(u_input.d, vec2<u32>(30789u, 4294967295u), vec2<bool>(arg_1.a.c.d, arg_1.a.a.d)), arg_0.x)), _wgslsmith_f_op_vec4_f32(arg_2 + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_2.x, arg_2.x, arg_1.a.a.e.x))))), arg_2.xxz, -(~func_3(vec3<u32>(arg_1.c, global1.a.x, 0u), arg_1.a.c.e))) >> (select(_wgslsmith_mult_u32(u_input.a.x, u_input.b.x), ~(~(~arg_1.c)), false) % 32u);
    var_0 = 1u;
    var var_1 = _wgslsmith_dot_vec2_u32(u_input.b.wz, countOneBits(u_input.b.xy >> (countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.c.x, global1.c.x), vec2<u32>(54133u, u_input.b.x), vec2<u32>(0u, 73773u))) % vec2<u32>(32u))));
    let var_2 = vec4<bool>(arg_1.a.a.d, true, !(!any(vec4<bool>(false, global1.b, false, false))) || global1.b, (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-513f + arg_1.a.c.e.x), _wgslsmith_f_op_f32(ceil(global1.d.x)), true)) < arg_1.a.c.e.x) & select(global1.b, arg_1.a.a.d, ~arg_0.x > -20134i));
    var var_3 = arg_1;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.xzy - arg_2.wyw) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.e.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(global1.d.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global0.x);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(-abs(vec4<i32>(48208i, u_input.d, u_input.d, u_input.d)), Struct_5(Struct_3(Struct_1(u_input.b, global1.c.yz, vec2<i32>(u_input.d, u_input.d), global1.b, global0.zy), vec4<u32>(global1.a.x, 15656u, 0u, global1.a.x), Struct_1(u_input.b, vec2<u32>(global1.c.x, u_input.c), vec2<i32>(1i, 0i), false, global0.yx)), vec4<u32>(u_input.a.x, u_input.e, u_input.a.x, global1.a.x), ~0u, max(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(u_input.d, -12779i, -2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(383f, -523f, global0.x, global1.d.x))))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1405f, -733f, -816f), vec3<f32>(global0.x, global0.x, 1000f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, 1312f), vec3<f32>(1427f, 1000f, 368f), true))))), vec3<f32>(global0.x, global0.x, global0.x)));
    let var_1 = 4294967295u;
    let var_2 = Struct_1(u_input.b, _wgslsmith_div_vec2_u32(firstTrailingBit(u_input.a), _wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.e, var_1), select(u_input.b.ww, vec2<u32>(54773u, 4294967295u), true)), abs(u_input.b.yx))), _wgslsmith_mod_vec2_i32(~(-(vec2<i32>(u_input.d, u_input.d) | vec2<i32>(u_input.d, u_input.d))), ~(~vec2<i32>(1i, 1i))), all(vec4<bool>(true, !any(vec2<bool>(global1.b, global1.b)), 1u != (var_1 & 64069u), true)), _wgslsmith_f_op_vec2_f32(exp2(global1.d)));
    global0 = vec3<f32>(-172f, _wgslsmith_f_op_f32(-315f * -1000f), -1753f);
    global2 = array<Struct_4, 30>();
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(79712u ^ (~_wgslsmith_sub_u32(var_2.a.x, 11426u) >> (global1.c.x % 32u)), u_input.e), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, firstTrailingBit(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.a.x, u_input.a.x, u_input.a.x), vec3<u32>(37051u, 1u, var_1)), global1.c))), -201f);
}

