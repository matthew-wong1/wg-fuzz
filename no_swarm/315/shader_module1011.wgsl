struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1190f;

var<private> global1: array<vec2<f32>, 2>;

var<private> global2: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(2147483647i, 1203i), vec2<i32>(69i, -1i), vec2<i32>(-1i, -12467i), vec2<i32>(-38946i, 8914i), vec2<i32>(21559i, 1i), vec2<i32>(-1i, -65032i), vec2<i32>(-1i, 0i), vec2<i32>(30503i, 48645i), vec2<i32>(0i, -17361i), vec2<i32>(2147483647i, -8285i), vec2<i32>(-10746i, -11162i), vec2<i32>(1i, -15181i), vec2<i32>(0i, 2147483647i), vec2<i32>(-3361i, i32(-2147483648)), vec2<i32>(52303i, 21702i), vec2<i32>(i32(-2147483648), 72106i), vec2<i32>(-1i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(1i, -13254i), vec2<i32>(2147483647i, -10416i), vec2<i32>(5943i, 4858i), vec2<i32>(-34421i, 2147483647i), vec2<i32>(2147483647i, -20794i), vec2<i32>(-33456i, 2147483647i), vec2<i32>(-56297i, 31190i), vec2<i32>(-1i, 1i));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<f32>(-865f, 1000f), i32(-2147483648), 1i, -1066f, vec3<i32>(-1i, 16629i, 34341i)), -531f, Struct_1(vec2<f32>(123f, -1647f), -4337i, -1i, -668f, vec3<i32>(-1i, 1i, 14837i)), true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(vec2<f32>(-638f, 1f), -2147483647i, u_input.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global3.a.d)))))), abs(global3.a.e ^ _wgslsmith_mod_vec3_i32(vec3<i32>(global3.c.b, global3.a.b, 40323i), global3.c.e))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(global3.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.c.d)) - _wgslsmith_f_op_f32(876f + global3.c.a.x)), false))), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(global3.a.d)), _wgslsmith_f_op_f32(step(global3.a.d, -290f))), vec2<f32>(_wgslsmith_f_op_f32(-810f + -734f), global3.c.a.x)), abs(-(~1i)), ~(u_input.a.x >> (~1u % 32u)), 188f, vec3<i32>(firstLeadingBit(countOneBits(u_input.a.x)), 1i, 15908i)), !(!any(vec2<bool>(false, true))));
    global3 = Struct_2(var_0.c, _wgslsmith_f_op_f32(ceil(global3.c.a.x)), Struct_1(var_0.c.a, max(-1i, 1i), -(abs(u_input.a.x) >> (_wgslsmith_clamp_u32(45156u, 42942u, 0u) % 32u)), 811f, max(vec3<i32>(var_0.a.e.x, var_0.c.c, var_0.a.c), vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.a.e.yx, global2[_wgslsmith_index_u32(4789u, 26u)]), ~(-2147483647i), ~global3.a.b))), (any(select(vec2<bool>(true, false), vec2<bool>(false, global3.d), vec2<bool>(global3.d, var_0.d))) || var_0.d) || !(any(vec2<bool>(true, false)) && true));
    let var_1 = Struct_2(global3.c, var_0.a.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(818f, var_0.c.d) + global1[_wgslsmith_index_u32(78837u, 2u)])) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global1[_wgslsmith_index_u32(1u, 2u)])))), -20396i, u_input.a.x, 329f, -reverseBits(-var_0.a.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a.x + var_0.a.d) - -2385f) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -355f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.b, 1012f))))));
    global1 = array<vec2<f32>, 2>();
    var var_2 = global3.d;
    return 624f;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> u32 {
    global3 = Struct_2(global3.c, _wgslsmith_f_op_f32(func_3()), arg_1.c, !(!(!arg_1.d)));
    global1 = array<vec2<f32>, 2>();
    global2 = array<vec2<i32>, 26>();
    let var_0 = _wgslsmith_f_op_f32(arg_0 + 1155f);
    let var_1 = ~(~firstLeadingBit(vec4<u32>(4294967295u, ~1u, 1u, 49780u)));
    return ~(~_wgslsmith_add_u32(~_wgslsmith_sub_u32(var_1.x, 4408u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_1.x, 4294967295u, var_1.x), 18287u)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    var var_0 = 0u;
    var var_1 = 94966u;
    var_0 = func_2(-1617f, arg_2, !global3.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.a.x, 1000f) - _wgslsmith_div_f32(global3.b, -1376f)), 1788f, arg_2.d))) & 5510u;
    global2 = array<vec2<i32>, 26>();
    global2 = array<vec2<i32>, 26>();
    return countOneBits(_wgslsmith_div_i32(abs(_wgslsmith_sub_i32(-67464i, 39883i) | -arg_0), 7145i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global3.c.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-356f, -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)))))));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.a.x, global3.c.a.x) * global3.a.a)))), _wgslsmith_div_i32(global3.a.e.x, -func_1(-42103i, Struct_1(global1[_wgslsmith_index_u32(0u, 2u)], global3.a.b, global3.a.b, -411f, vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), Struct_2(Struct_1(vec2<f32>(global3.a.a.x, global3.c.a.x), global3.c.c, global3.c.b, global3.a.a.x, global3.a.e), global3.c.d, global3.a, true))), -46592i, global3.a.d, _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(global3.c.e | global3.a.e, _wgslsmith_div_vec3_i32(global3.a.e, vec3<i32>(global3.c.b, 23156i, -1i)), reverseBits(vec3<i32>(1i, global3.a.b, global3.c.b))), ~(-global3.c.e), -_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -11401i, -55186i), vec3<i32>(global3.c.c, u_input.a.x, u_input.a.x)))), 143f, Struct_1(_wgslsmith_f_op_vec2_f32(round(global1[_wgslsmith_index_u32(1u, 2u)])), ~2147483647i >> (1u % 32u), _wgslsmith_mod_i32(-2147483647i, u_input.a.x) | ~abs(-13338i), global3.a.a.x, global3.c.e), (-2076f != global3.b) && (global3.d && true));
    let var_1 = select(!select(select(!vec4<bool>(var_0.d, true, var_0.d, var_0.d), vec4<bool>(true, global3.d, var_0.d, var_0.d), !vec4<bool>(var_0.d, false, global3.d, false)), select(!vec4<bool>(true, var_0.d, false, false), select(vec4<bool>(var_0.d, true, global3.d, false), vec4<bool>(true, true, global3.d, global3.d), false), true), !any(vec4<bool>(global3.d, true, true, true))), !(!vec4<bool>(global3.d, false, all(vec4<bool>(var_0.d, true, true, var_0.d)), true)), vec4<bool>(false, true || global3.d, !any(vec2<bool>(true, var_0.d)) & select(var_0.d, var_0.d, false), -286f <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1151f + -1857f)))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.a.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -692f), -355f);
    global2 = array<vec2<i32>, 26>();
    var var_3 = _wgslsmith_mod_u32(~1u, 1u);
    var_3 = 1u;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -470f));
    var var_5 = Struct_2(var_0.c, -124f, var_0.c, select(false, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 39116u), vec2<u32>(4294967295u, 4294967295u)), min(15146u, 1u)) >= ~max(54389u, 1u), true));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(27013u), global3.c.b, _wgslsmith_f_op_vec2_f32(round(global3.c.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, reverseBits(11973u), _wgslsmith_mod_u32(1u, 1u)), ~vec3<u32>(1u, 4294967295u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u))), select(vec4<u32>(1u, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 76966u, 0u), vec3<u32>(1u, 59094u, 65921u))), ~4294967295u, 4294967295u), ~(~vec4<u32>(1u, 1u, 1u, 1u)), !vec4<bool>(false, 1812f <= global3.a.d, all(var_1), var_0.d)));
}

