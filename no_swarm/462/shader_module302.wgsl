struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<i32>,
    d: u32,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
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

var<private> global0: array<u32, 8>;

var<private> global1: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(6715i, -1i, -1i, -20671i), vec4<i32>(1i, 0i, 1i, i32(-2147483648)), vec4<i32>(-1i, -1i, i32(-2147483648), 0i), vec4<i32>(i32(-2147483648), 5934i, 1i, 8363i), vec4<i32>(0i, i32(-2147483648), 45598i, 2147483647i), vec4<i32>(-54321i, i32(-2147483648), 1i, 2147483647i), vec4<i32>(-4321i, -210i, -50878i, -13844i), vec4<i32>(-1i, -1820i, 0i, -1i), vec4<i32>(1272i, 27687i, -58396i, i32(-2147483648)), vec4<i32>(20759i, 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), -1i, 9882i, -12828i), vec4<i32>(0i, 1i, -37851i, -1i), vec4<i32>(2147483647i, -21188i, i32(-2147483648), -2831i), vec4<i32>(-1i, 7051i, 1i, i32(-2147483648)), vec4<i32>(-3232i, 14325i, -30117i, -1i), vec4<i32>(-16626i, 2147483647i, -12448i, 0i), vec4<i32>(2147483647i, -35449i, 2147483647i, -35406i), vec4<i32>(69224i, -11974i, 56636i, 1i), vec4<i32>(8458i, 48111i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, -28332i, i32(-2147483648), 13129i));

var<private> global2: array<i32, 2>;

var<private> global3: array<Struct_5, 20> = array<Struct_5, 20>(Struct_5(71598i, false), Struct_5(-7734i, true), Struct_5(-45359i, true), Struct_5(i32(-2147483648), true), Struct_5(i32(-2147483648), true), Struct_5(-19218i, true), Struct_5(-81060i, true), Struct_5(26452i, false), Struct_5(0i, true), Struct_5(0i, true), Struct_5(5485i, true), Struct_5(-3490i, false), Struct_5(-12494i, false), Struct_5(-2895i, true), Struct_5(31825i, true), Struct_5(2147483647i, false), Struct_5(-1i, true), Struct_5(i32(-2147483648), false), Struct_5(64387i, true), Struct_5(66710i, true));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> u32 {
    return 18198u;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: f32) -> bool {
    var var_0 = 13397u;
    global0 = array<u32, 8>();
    let var_1 = 89854u;
    var var_2 = arg_2 >= -124f;
    global3 = array<Struct_5, 20>();
    return !(!(!arg_1.x));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = !vec2<bool>(false, all(vec2<bool>(true, true)));
    let var_1 = true;
    global1 = array<vec4<i32>, 20>();
    global1 = array<vec4<i32>, 20>();
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_mult_u32(0u, arg_0.d.x) << (arg_0.d.x % 32u)), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(arg_0.d.x, arg_0.d.x), ~arg_0.d.x)), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d.x, arg_0.d.x, 83254u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.d.x, 8u)], 8u)], 89303u), vec3<u32>(1u, 0u, 66886u))), 1u), _wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(21441u, global0[_wgslsmith_index_u32(12571u, 8u)]), vec2<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 8u)])), ~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], arg_0.d.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_0.d.x, _wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(4294967295u, 8u)])), _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0.d.x, 4294967295u, 85713u), countOneBits(global0[_wgslsmith_index_u32(40976u, 8u)])), ~0u, 10514u), vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(arg_0.d.x, 8u)], 27775u, global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(arg_0.d.x, 8u)]), firstTrailingBit(vec4<u32>(1u, 0u, 59767u, arg_0.d.x))), 8u)], min(select(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.d.x, 8u)], 8u)], false), 15858u), arg_0.d.x >> (47503u % 32u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.d.x, 8u)], 8u)] ^ global0[_wgslsmith_index_u32(~arg_0.d.x, 8u)])));
    return Struct_1(arg_0.a, 1062f, arg_0.c, ~(~arg_0.d));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_3.b - _wgslsmith_f_op_f32(1687f + 1616f)), 188f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b, arg_3.b) + vec2<f32>(arg_3.b, 149f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_3.b, -1681f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(311f, arg_3.b), _wgslsmith_f_op_f32(-712f + var_0.x)) - _wgslsmith_div_f32(-966f, arg_3.b)), func_3(arg_3, arg_3.c.x, var_0.x).b));
    global1 = array<vec4<i32>, 20>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(917f)), arg_3.b, var_1.x);
    global3 = array<Struct_5, 20>();
    return Struct_2(~1u, func_3(func_3(func_3(Struct_1(arg_0, var_2.x, vec4<bool>(false, arg_3.c.x, arg_3.c.x, true), arg_3.d), arg_3.c.x, _wgslsmith_div_f32(1000f, var_1.x)), arg_3.c.x, arg_3.b), arg_3.c.x, _wgslsmith_f_op_f32(-var_2.x)));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = 1u;
    return func_3(Struct_1(~(min(vec4<i32>(u_input.a.x, arg_0.b.a.x, arg_0.b.a.x, 0i), global1[_wgslsmith_index_u32(13424u, 20u)]) >> (select(vec4<u32>(arg_0.a, 8396u, 4294967295u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(11347u, 8u)], global0[_wgslsmith_index_u32(var_0, 8u)], 1u, global0[_wgslsmith_index_u32(arg_0.b.d.x, 8u)]), true) % vec4<u32>(32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-782f)), _wgslsmith_div_f32(arg_0.b.b, -362f)))), arg_0.b.c, ~(~(~arg_0.b.d))), !(_wgslsmith_div_f32(-1441f, arg_0.b.b) == -325f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.b.b, 625f)) - -124f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(global1[_wgslsmith_index_u32(func_1(global0[_wgslsmith_index_u32(0u, 8u)], firstLeadingBit(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39341u, 8u)], 8u)]))), 20u)], ~2147483647i, ~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(32733u, 8u)], 8u)], 0u >> (global0[_wgslsmith_index_u32(1u, 8u)] % 32u)), 8u)], func_3(Struct_1(~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54592u, 8u)], 20u)], _wgslsmith_f_op_f32(ceil(198f)), vec4<bool>(true, true, true, true), select(vec2<u32>(1u, 52616u), vec2<u32>(18121u, 1u), vec2<bool>(true, false))), func_2(Struct_3(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)]), vec4<i32>(-16418i, u_input.b.x, global2[_wgslsmith_index_u32(4294967295u, 2u)], -2147483647i)), vec4<bool>(true, true, true, true), -329f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))), true);
    global0 = array<u32, 8>();
    let var_1 = _wgslsmith_div_f32(var_0.b, 555f);
    global3 = array<Struct_5, 20>();
    let var_2 = vec2<bool>(false, true);
    var var_3 = _wgslsmith_mult_u32(38362u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-var_0.b))));
}

