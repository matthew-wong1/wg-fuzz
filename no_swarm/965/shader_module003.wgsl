struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1424f;

var<private> global1: array<bool, 2>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec3<bool>(false, true, true), -15373i, Struct_1(2147483647i, vec3<bool>(true, true, false), true)), Struct_2(vec3<bool>(true, false, true), 1793i, Struct_1(2147483647i, vec3<bool>(false, true, false), true)), Struct_2(vec3<bool>(false, false, false), 6635i, Struct_1(0i, vec3<bool>(false, false, true), true)), Struct_2(vec3<bool>(false, false, false), -6858i, Struct_1(0i, vec3<bool>(false, true, false), true)), Struct_2(vec3<bool>(false, false, true), -1i, Struct_1(-37528i, vec3<bool>(true, false, true), true)), Struct_2(vec3<bool>(false, true, true), -1i, Struct_1(0i, vec3<bool>(false, true, true), false)), Struct_2(vec3<bool>(false, true, true), i32(-2147483648), Struct_1(-38310i, vec3<bool>(true, true, false), false)), Struct_2(vec3<bool>(false, false, true), -1i, Struct_1(0i, vec3<bool>(true, true, false), false)), Struct_2(vec3<bool>(false, true, true), 1i, Struct_1(1i, vec3<bool>(false, true, true), true)), Struct_2(vec3<bool>(false, false, false), -1i, Struct_1(0i, vec3<bool>(false, false, false), true)), Struct_2(vec3<bool>(false, false, false), -25089i, Struct_1(2147483647i, vec3<bool>(true, true, false), false)), Struct_2(vec3<bool>(true, true, true), 33946i, Struct_1(2147483647i, vec3<bool>(true, true, true), true)), Struct_2(vec3<bool>(true, true, true), 10787i, Struct_1(-78173i, vec3<bool>(false, true, true), false)), Struct_2(vec3<bool>(true, true, false), 15690i, Struct_1(21785i, vec3<bool>(true, true, true), false)), Struct_2(vec3<bool>(true, false, false), 0i, Struct_1(-1i, vec3<bool>(true, true, false), true)), Struct_2(vec3<bool>(false, true, false), -1i, Struct_1(1i, vec3<bool>(false, false, false), true)), Struct_2(vec3<bool>(false, false, true), 21983i, Struct_1(i32(-2147483648), vec3<bool>(true, false, true), false)));

var<private> global4: array<vec2<i32>, 1>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<f32> {
    var var_0 = global3[_wgslsmith_index_u32(1u, 17u)];
    global0 = _wgslsmith_f_op_f32(-761f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(739f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(681f)))))));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, ~u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.a, 56319u), _wgslsmith_div_u32(31280u, 38783u), _wgslsmith_div_u32(7914u, u_input.a)), firstLeadingBit(vec3<u32>(u_input.c, 1u, u_input.c)) << (abs(vec3<u32>(u_input.c, 0u, u_input.a)) % vec3<u32>(32u)))) >> ((min(u_input.c << (abs(u_input.c) % 32u), u_input.c) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(54027u, u_input.a, u_input.c, 1u) << (vec4<u32>(u_input.a, 4294967295u, 0u, 1u) % vec4<u32>(32u)), vec4<u32>(u_input.c, 118896u, ~u_input.c, 3399u)) % 32u)) % 32u);
    let var_2 = -firstLeadingBit(1i);
    var_1 = 1u;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1144f + -1117f)))), 737f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1776f)) + -1000f))));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: u32) -> Struct_1 {
    global3 = array<Struct_2, 17>();
    let var_0 = arg_1.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-735f, _wgslsmith_f_op_f32(208f + 634f), -487f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1249f, 3482f, -348f)), _wgslsmith_f_op_vec3_f32(func_3()))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-171f, 318f, 2503f)))))))));
    var var_2 = global2.c;
    let var_3 = Struct_1(-1i, global2.c.b, true);
    return global2.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(101124u, 17u)];
    var var_1 = var_0.c;
    let var_2 = 53706u;
    let var_3 = func_2(-u_input.b & global2.c.a, global3[_wgslsmith_index_u32(~(1u | (4294967295u << (var_2 % 32u))), 17u)], firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(var_2, arg_2.x, var_2, var_2), vec4<u32>(4294967295u, u_input.c, u_input.a, 1u))) << (_wgslsmith_div_vec4_u32(~vec4<u32>(0u, var_2, 4294967295u, 4294967295u), ~(vec4<u32>(u_input.c, 4294967295u, arg_2.x, 58111u) | vec4<u32>(var_2, 55621u, var_2, u_input.a))) % vec4<u32>(32u)), ~1u);
    global3 = array<Struct_2, 17>();
    return func_2(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_1.a, 10180i, ~var_3.a), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(-14861i, 2147483647i, 36066i)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a, -38872i, global2.b), vec3<i32>(arg_1.x, -13902i, -2147483647i))), global2.c.b), reverseBits(~_wgslsmith_mult_vec3_i32(vec3<i32>(global2.b, var_3.a, u_input.b), vec3<i32>(50661i, var_1.a, -2147483647i)))), Struct_2(select(!arg_0.b, !(!vec3<bool>(var_0.a.x, arg_0.b.x, var_3.b.x)), var_3.b), 0i, Struct_1(firstLeadingBit(global2.c.a | 0i), vec3<bool>(true, true, true), !func_2(arg_1.x, Struct_2(var_0.a, -2147483647i, var_3), vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), u_input.a).b.x)), ~select(vec4<u32>(~var_2, ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 51017u), vec3<u32>(arg_2.x, 1u, u_input.c)), 4377u), countOneBits(countOneBits(vec4<u32>(0u, 0u, arg_2.x, 1u))), any(select(vec3<bool>(var_1.b.x, arg_0.b.x, arg_0.c), var_3.b, global1[_wgslsmith_index_u32(46275u, 2u)]))), 56383u ^ u_input.c);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(vec3<bool>(2102f <= _wgslsmith_f_op_f32(824f + _wgslsmith_f_op_f32(step(1000f, 468f))), false | global1[_wgslsmith_index_u32(~u_input.a, 2u)], (_wgslsmith_mod_i32(0i, -15983i) != abs(u_input.b)) | true), u_input.b, Struct_1(-41784i, arg_0.b, true));
    global1 = array<bool, 2>();
    var var_1 = func_4(arg_0, vec2<i32>(global2.b, u_input.b), (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 32905u) ^ vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 30879u)) >> (~(~vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 21815u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(11133u, u_input.a, 0u), vec3<u32>(0u, u_input.c, 4294967295u))), ~u_input.a) % vec2<u32>(32u))).a;
    let var_2 = global2.c.a;
    global2 = global3[_wgslsmith_index_u32(firstLeadingBit(~u_input.c) & firstLeadingBit(0u), 17u)];
    return func_2(max(_wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_0.a, 10075i, -2147483647i) | abs(-34094i), arg_0.a), ~_wgslsmith_add_i32(u_input.b << (1u % 32u), global2.b ^ global2.c.a)), global3[_wgslsmith_index_u32(~0u, 17u)], _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(select(1u, 4294967295u, false), 36227u, u_input.c, u_input.c), vec4<u32>(u_input.c, 114504u, 1u, 4294967295u) | ~vec4<u32>(0u, u_input.c, u_input.a, 4294967295u)), ~reverseBits(vec4<u32>(u_input.c, u_input.a, 4294967295u, 67097u)) ^ firstTrailingBit(vec4<u32>(u_input.c, 80553u, 125795u, u_input.a))), _wgslsmith_div_u32(u_input.c, firstTrailingBit(u_input.c)));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> vec4<f32> {
    let var_0 = global2.a.yz;
    let var_1 = func_5(func_4(func_2(-1i, global3[_wgslsmith_index_u32(u_input.c, 17u)], firstLeadingBit(vec4<u32>(44319u, u_input.c, u_input.a, u_input.a)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a), vec4<u32>(2133u, 39846u, u_input.c, 4294967295u)), _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, u_input.c), 4294967295u)), vec2<i32>(~1i, _wgslsmith_mod_i32(1i, global2.c.a)), _wgslsmith_mult_vec2_u32(~(vec2<u32>(0u, 4294967295u) & vec2<u32>(u_input.c, u_input.c)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, u_input.a)))));
    global3 = array<Struct_2, 17>();
    var var_2 = vec2<f32>(2265f, _wgslsmith_f_op_f32(ceil(1618f)));
    var var_3 = vec3<f32>(arg_1, 337f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, var_0.x)) + arg_1), _wgslsmith_f_op_f32(-1132f - -284f)), var_2.x)));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(322f, arg_1, -172f, var_3.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -330f, var_3.x, var_3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1059f, 789f, -1703f, arg_1))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1615f, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1090f))), _wgslsmith_f_op_f32(655f - -118f)))));
}

fn func_6(arg_0: vec4<f32>, arg_1: f32, arg_2: i32, arg_3: u32) -> f32 {
    var var_0 = select(vec4<u32>(0u, ~(~(~arg_3)), ~abs(abs(u_input.a)), 4025u), (abs(~vec4<u32>(arg_3, 4294967295u, 0u, 43740u)) << ((max(vec4<u32>(u_input.c, u_input.c, 40831u, u_input.c), vec4<u32>(arg_3, u_input.a, u_input.a, 19514u)) ^ ~vec4<u32>(u_input.a, arg_3, 1u, arg_3)) % vec4<u32>(32u))) | abs(~firstTrailingBit(vec4<u32>(0u, 44548u, 1u, arg_3))), select(vec4<bool>(global1[_wgslsmith_index_u32(~(~72749u), 2u)], all(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 2u)], true, true, global1[_wgslsmith_index_u32(1u, 2u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 2u)], global2.c.b.x, global1[_wgslsmith_index_u32(arg_3, 2u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 2u)], global2.a.x, global2.c.c, false))), false, global2.c.b.x), vec4<bool>(true, !(!global2.a.x), true, true), select(select(!vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(arg_3, 2u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(24691u, 2u)], global1[_wgslsmith_index_u32(19470u, 2u)], true), vec4<bool>(false, true, global1[_wgslsmith_index_u32(arg_3, 2u)], global1[_wgslsmith_index_u32(31904u, 2u)])), vec4<bool>(global1[_wgslsmith_index_u32(~35126u, 2u)], true, true | global2.c.b.x, func_5(Struct_1(u_input.b, vec3<bool>(global1[_wgslsmith_index_u32(arg_3, 2u)], true, false), true)).c), vec4<bool>(false, global1[_wgslsmith_index_u32(43787u, 2u)], global2.a.x, false))));
    let var_1 = max(select(reverseBits(vec4<i32>(arg_2, _wgslsmith_div_i32(global2.b, 44903i), ~20301i, 2147483647i)), (vec4<i32>(-1i, -51894i, arg_2, -10078i) << (vec4<u32>(arg_3, 4294967295u, u_input.a, var_0.x) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-2147483647i, -2147483647i, global2.b, u_input.b)), vec4<i32>(global2.c.a, arg_2, arg_2, -47312i)), global1[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(58759u, u_input.c, var_0.x, arg_3), vec4<u32>(arg_3, u_input.c, 1u, 4294967295u))), 2u)]), vec4<i32>(~arg_2 & ~1i, min(_wgslsmith_dot_vec2_i32(~global4[_wgslsmith_index_u32(7679u, 1u)], -vec2<i32>(u_input.b, u_input.b)), 2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, arg_2, -10770i, -1i), _wgslsmith_sub_vec4_i32(-vec4<i32>(arg_2, arg_2, arg_2, arg_2), _wgslsmith_add_vec4_i32(vec4<i32>(arg_2, -2147483647i, arg_2, 42484i), vec4<i32>(u_input.b, u_input.b, 1i, arg_2)))), -global2.b));
    let var_2 = global2.c;
    let var_3 = var_2.b.xx;
    return _wgslsmith_f_op_f32(-arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mod_i32(2147483647i, global2.c.a), select(global2.a, vec3<bool>(any(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)])), ~u_input.a >= (u_input.a >> (u_input.c % 32u)), any(global2.c.b.zy)), global1[_wgslsmith_index_u32(~firstTrailingBit(u_input.c), 2u)]), (~u_input.c ^ 1u) == u_input.c);
    var var_1 = global2.c;
    var var_2 = _wgslsmith_clamp_i32(var_0.a, reverseBits(_wgslsmith_add_i32(global2.c.a, -1i)), ~(-(var_0.a | 1i)));
    global0 = _wgslsmith_f_op_f32(sign(352f));
    var_2 = _wgslsmith_mod_i32(-_wgslsmith_sub_i32(global2.b, -var_1.a), var_0.a) << (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u);
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1679f)), -333f)) >= _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec2<i32>(2147483647i, -15279i), _wgslsmith_f_op_f32(-1774f * 528f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(532f)))))), _wgslsmith_mod_i32(var_1.a, var_1.a & global2.b), 1u));
    var var_4 = func_5(Struct_1(firstTrailingBit(firstTrailingBit(global2.c.a)), select(vec3<bool>(var_1.b.x, true, false), func_2(-7117i, Struct_2(vec3<bool>(global2.c.c, global2.c.b.x, true), global2.c.a, global2.c), abs(vec4<u32>(30166u, u_input.a, u_input.a, 1u)), u_input.a).b, func_5(Struct_1(global2.b, var_1.b, var_0.c)).c), false)).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1105f)))))), vec2<i32>(_wgslsmith_sub_i32(var_0.a, 2147483647i) & 1i, ~(-4576i << (u_input.c % 32u))) & select(~(~global4[_wgslsmith_index_u32(93559u, 1u)]), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(u_input.c), 32227u), 1u)], func_5(func_4(var_0, global4[_wgslsmith_index_u32(u_input.a, 1u)], vec2<u32>(1u, 4294967295u))).b.x));
}

