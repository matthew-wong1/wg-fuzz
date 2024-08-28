struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(22243i, 18726i, 64742i, -1i, i32(-2147483648));

var<private> global1: array<vec4<bool>, 4>;

var<private> global2: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

var<private> global3: array<u32, 29> = array<u32, 29>(4294967295u, 4294967295u, 0u, 24294u, 18924u, 4294967295u, 4294967295u, 4294967295u, 1735u, 36390u, 1u, 1u, 13548u, 4294967295u, 13129u, 33261u, 1u, 74269u, 15382u, 4294967295u, 29565u, 41307u, 0u, 4294967295u, 0u, 12361u, 0u, 31941u, 0u);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = !arg_0.b.yy;
    let var_1 = Struct_4(max(abs(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.b, 5u)], firstLeadingBit(global0[_wgslsmith_index_u32(arg_0.d, 5u)]), i32(-1i) * -8350i)), ~(~vec4<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 5u)], u_input.a, u_input.a, global0[_wgslsmith_index_u32(15758u, 5u)]))), vec3<bool>(true, !arg_0.b.x, var_0.x == all(!vec2<bool>(var_0.x, arg_0.b.x))), vec3<i32>(global0[_wgslsmith_index_u32(select(min(arg_0.c, ~0u), reverseBits(1u), !(false && arg_0.b.x)), 5u)], -28450i, min(0i, reverseBits(global0[_wgslsmith_index_u32(arg_0.c, 5u)]))), vec4<u32>(~(~min(global3[_wgslsmith_index_u32(46593u, 29u)], 69064u)), 5952u, countOneBits(arg_0.d) << (~arg_0.d % 32u), _wgslsmith_div_u32(abs(arg_0.c), arg_0.d >> (global3[_wgslsmith_index_u32(u_input.b, 29u)] % 32u)) & arg_0.d), _wgslsmith_f_op_f32(floor(-713f)));
    var var_2 = var_1;
    let var_3 = vec3<u32>(1u, ~_wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.d.x, 1u), 33063u), 4294967295u) | vec3<u32>(0u, var_1.d.x, 29097u);
    var var_4 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.a)), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-var_2.e), var_2.e))), _wgslsmith_add_vec2_i32(-var_2.c.zz, select(var_1.c.zy | var_1.c.yz, vec2<i32>(global0[_wgslsmith_index_u32(var_1.d.x, 5u)], firstTrailingBit(1i)), !(-498f > arg_0.a))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(330f)), 241f)))), abs(select(abs(firstLeadingBit(var_2.d.xw)), max(u_input.c.yz, max(var_2.d.wy, vec2<u32>(3983u, 4294967295u))), any(select(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.d, 29u)], 4u)], vec4<bool>(var_1.b.x, var_2.b.x, var_2.b.x, false), arg_0.b.x)))));
    return var_1.a.wxz;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec3<i32>, arg_3: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_div_i32(-max(_wgslsmith_mult_i32(-56030i >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)] % 32u), ~global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12931u, 29u)], 5u)]), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(1u, 5u)], ~arg_2.x, ~5682i)), arg_2.x);
    global1 = array<vec4<bool>, 4>();
    var_0 = _wgslsmith_div_i32(countOneBits(arg_2.x), select(0i, 2147483647i, true));
    var var_1 = -386f != arg_1;
    var_0 = 1i;
    return !(!(arg_1 < _wgslsmith_f_op_f32(-323f + arg_1)));
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.e.a)) + _wgslsmith_f_op_f32(arg_0.e.a * 693f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.a * -1000f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.e.a), _wgslsmith_f_op_f32(min(arg_0.e.a, -1067f)))), select(arg_0.a.x, !arg_0.a.x, func_4(!arg_0.e.b.x, _wgslsmith_f_op_f32(f32(-1f) * -568f), vec3<i32>(-55907i, 83383i, arg_0.b.x), func_3(arg_0.e))))), vec3<bool>(true, true, !(!(arg_0.e.b.x & true))), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, global3[_wgslsmith_index_u32(reverseBits(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(70969u, 29u)], 29u)]), 29u)]), 29u)], 29u)] & abs(_wgslsmith_sub_u32(u_input.c.x, ~4068u)), arg_0.e.c);
    let var_1 = ~_wgslsmith_div_u32(~arg_0.d.x, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(45384u, 33283u, 10373u), vec3<u32>(4294967295u, 16108u, u_input.b))));
    global3 = array<u32, 29>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, arg_0.e.a, var_0.a, 1541f), vec4<f32>(var_0.a, arg_0.e.a, var_0.a, var_0.a), true))))));
    global0 = array<i32, 5>();
    return firstLeadingBit(arg_0.d.x);
}

fn func_1(arg_0: u32) -> vec2<i32> {
    global0 = array<i32, 5>();
    global2 = array<vec3<bool>, 25>();
    global1 = array<vec4<bool>, 4>();
    let var_0 = _wgslsmith_mult_u32(countOneBits(32207u << (~arg_0 % 32u)), abs(func_2(Struct_3(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 29u)], 4u)], vec4<i32>(u_input.a, 47225i, global0[_wgslsmith_index_u32(u_input.b, 5u)], u_input.a), true, vec2<u32>(u_input.b, arg_0), Struct_1(-974f, global2[_wgslsmith_index_u32(arg_0, 25u)], u_input.b, arg_0))))) >= global3[_wgslsmith_index_u32(17932u, 29u)];
    global2 = array<vec3<bool>, 25>();
    return func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-806f, 780f)), select(global2[_wgslsmith_index_u32(min(1u, 4294967295u), 25u)], !vec3<bool>(var_0, true, true), !var_0), firstTrailingBit(73747u), ~26198u | u_input.b)).xz ^ vec2<i32>(global0[_wgslsmith_index_u32(max(min(global3[_wgslsmith_index_u32(arg_0, 29u)], 0u) | func_2(Struct_3(global1[_wgslsmith_index_u32(4294967295u, 4u)], vec4<i32>(-3346i, 1i, global0[_wgslsmith_index_u32(arg_0, 5u)], u_input.a), true, vec2<u32>(4294967295u, 32440u), Struct_1(1160f, global2[_wgslsmith_index_u32(4294967295u, 25u)], u_input.c.x, u_input.b))), ~u_input.b), 5u)], global0[_wgslsmith_index_u32(~(~abs(4294967295u)), 5u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 4>();
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(207f, -2404f, 434f, 261f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-484f, 1148f, 1000f, 1000f))))))), abs(~select(vec2<i32>(-13799i, global0[_wgslsmith_index_u32(u_input.b, 5u)]), vec2<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 29u)], 5u)], -2147483647i), vec2<bool>(true, true))) & func_1(min(24399u ^ global3[_wgslsmith_index_u32(0u, 29u)], 18857u)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(887f - -341f), 1f)))), _wgslsmith_f_op_f32(f32(-1f) * -1309f)), u_input.c.yy);
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c, reverseBits(u_input.c)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(abs(u_input.c), ~u_input.c), ~u_input.c)));
    global2 = array<vec3<bool>, 25>();
    var var_2 = Struct_1(var_0.c.x, vec3<bool>(false, select(0u != var_1, false, true), func_4(select(true, true, true), _wgslsmith_div_f32(var_0.a.x, var_0.a.x), reverseBits(vec3<i32>(-35882i, -12792i, 0i)), vec3<i32>(2147483647i, 2147483647i, u_input.a)) || true), _wgslsmith_dot_vec4_u32(~select(~vec4<u32>(0u, global3[_wgslsmith_index_u32(var_1, 29u)], var_1, 38308u), vec4<u32>(49483u, 4294967295u, global3[_wgslsmith_index_u32(var_1, 29u)], var_0.d.x), select(false, true, false)), vec4<u32>(1u, ~(~u_input.b), 0u, select(0u, _wgslsmith_div_u32(32947u, 16135u), true))), _wgslsmith_sub_u32(var_1, global3[_wgslsmith_index_u32(abs(28233u << (var_0.d.x % 32u)), 29u)]) & select(abs(countOneBits(1u)), max(u_input.c.x, 0u), true));
    global2 = array<vec3<bool>, 25>();
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(991f, -465f)))))), vec2<f32>(-251f, -1000f)));
    var var_4 = var_2.b.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.c))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_2.d, 29u)], 5u)], 17966i, 1i, -18573i) ^ (vec4<i32>(var_0.b.x, -14423i, 15059i, 51836i) ^ vec4<i32>(u_input.a, 27078i, 2147483647i, global0[_wgslsmith_index_u32(1u, 5u)])), abs(-vec4<i32>(u_input.a, 28164i, u_input.a, u_input.a)), -(~vec4<i32>(var_0.b.x, -7795i, u_input.a, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1638f, var_3.x))))), ~(~u_input.c));
}

