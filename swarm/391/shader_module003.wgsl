struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-1i, false, true, 1000f, 18740i), Struct_1(-2890i, false, true, -1038f, 9896i), Struct_1(-39308i, true, false, 801f, 18913i), Struct_1(-1i, true, true, -2261f, 1i), Struct_1(i32(-2147483648), true, true, -712f, 36516i), Struct_1(0i, true, false, 358f, 22959i), Struct_1(i32(-2147483648), false, true, -2073f, -17067i), Struct_1(-47280i, true, false, -1572f, 18009i));

var<private> global1: array<i32, 20> = array<i32, 20>(i32(-2147483648), i32(-2147483648), -7094i, 0i, 2147483647i, 40996i, 30759i, 2147483647i, i32(-2147483648), -2033i, 0i, 2147483647i, 2147483647i, 2147483647i, 4101i, -23524i, 0i, 2147483647i, -36369i, -1i);

var<private> global2: i32;

var<private> global3: array<u32, 20>;

var<private> global4: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-42147i, true, false, -1000f, -10386i), Struct_1(i32(-2147483648), true, false, 2198f, -24877i), Struct_1(-1i, true, false, -330f, 0i), Struct_1(1i, false, false, -1093f, i32(-2147483648)), Struct_1(-38353i, false, true, 1000f, 30072i), Struct_1(2147483647i, true, true, 635f, 0i), Struct_1(12644i, true, false, -702f, -1i), Struct_1(i32(-2147483648), true, false, 1000f, i32(-2147483648)), Struct_1(0i, false, true, 1326f, 34192i), Struct_1(i32(-2147483648), true, true, -1628f, -8605i), Struct_1(2147483647i, true, false, -1352f, 2147483647i), Struct_1(2147483647i, true, true, -1000f, -69144i), Struct_1(19064i, false, true, 182f, 1i), Struct_1(-43934i, true, false, -2996f, -1i), Struct_1(-3176i, true, false, 780f, -1i), Struct_1(19432i, false, true, 585f, 0i), Struct_1(2147483647i, false, false, -468f, i32(-2147483648)), Struct_1(1i, false, true, 1045f, -101310i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec4<bool>) -> u32 {
    var var_0 = -select(reverseBits(abs(select(vec4<i32>(u_input.b, 0i, 2264i, -50435i), vec4<i32>(u_input.b, u_input.d.x, 10653i, global1[_wgslsmith_index_u32(u_input.c, 20u)]), arg_2.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(arg_1.x, 20u)], u_input.b, 0i), vec3<i32>(-2147483647i, u_input.d.x, u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(-49290i, 1i, 0i), vec3<i32>(u_input.d.x, u_input.a, 57030i))), _wgslsmith_dot_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 20u)], 20u)], 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.x, 20u)], 20u)], 1i), ~vec4<i32>(u_input.d.x, global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(17338u, 20u)], -6701i)), _wgslsmith_sub_i32(37733i, min(1i, global1[_wgslsmith_index_u32(0u, 20u)])), firstLeadingBit(max(global1[_wgslsmith_index_u32(74758u, 20u)], -1i))), !all(arg_2));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2137f, -1269f, false))), _wgslsmith_f_op_f32(round(-430f)))) * 1000f));
    global4 = array<Struct_1, 18>();
    var var_2 = !(!((true | !arg_2.x) && true));
    var var_3 = ~countOneBits(0u);
    return 0u;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = vec2<bool>(arg_3.c, arg_2.c);
    var var_1 = arg_3.c;
    let var_2 = global4[_wgslsmith_index_u32(0u, 18u)];
    let var_3 = min(_wgslsmith_sub_i32(0i, 1i), arg_3.a);
    var_1 = all(select(!(!select(vec4<bool>(var_2.c, arg_2.c, var_0.x, true), vec4<bool>(true, true, true, arg_2.c), vec4<bool>(var_0.x, false, arg_2.c, var_0.x))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, arg_2.b, true), true), !select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(arg_2.b, true, arg_2.c, true), false), true), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, var_0.x, var_2.c, var_0.x), arg_3.b))));
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_div_i32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.e), 20u)], -2147483647i), func_4(4294967295u, func_3(vec2<bool>(true, true), ~vec3<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 20u)], 20u)], 20u)], 20u)], 13926u), vec4<bool>(true, true, true, true)), global0[_wgslsmith_index_u32(1u, 8u)], Struct_1(global1[_wgslsmith_index_u32(~u_input.e, 20u)], true, all(vec2<bool>(false, false)), _wgslsmith_f_op_f32(100f + 440f), u_input.b)) && true, func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) | (vec2<u32>(u_input.e, u_input.e) ^ vec2<u32>(u_input.c, 79079u)), firstTrailingBit(~vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 20u)], 20u)]))), ~firstTrailingBit(112894u), global4[_wgslsmith_index_u32(u_input.c, 18u)], Struct_1(u_input.d.x, true, true, -1964f, u_input.d.x)), -424f, abs(select(i32(-1i) * -u_input.b, firstTrailingBit(0i), all(vec2<bool>(false, false)) & all(vec2<bool>(false, false)))));
    var var_1 = Struct_1(31635i, all(!vec3<bool>(var_0.b, var_0.c || var_0.c, true)), var_0.c, _wgslsmith_f_op_f32(-var_0.d), u_input.a);
    let var_2 = !select(!vec4<bool>(all(vec4<bool>(false, var_1.c, false, true)), true, true, false || var_0.b), select(select(select(vec4<bool>(var_1.c, var_0.c, var_1.c, true), vec4<bool>(true, var_1.b, true, var_1.c), var_0.c), !vec4<bool>(var_1.c, true, var_1.c, true), var_1.b || var_1.b), select(select(vec4<bool>(false, false, false, var_0.b), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, true, var_1.b, false), vec4<bool>(var_0.b, false, var_1.c, false), vec4<bool>(var_0.b, var_1.b, true, false)), select(vec4<bool>(false, true, var_0.b, var_0.c), vec4<bool>(var_0.c, var_1.b, var_0.b, true), vec4<bool>(true, var_0.c, var_0.c, var_0.b))), any(select(vec4<bool>(false, var_1.c, true, false), vec4<bool>(var_1.b, false, true, var_1.b), vec4<bool>(var_0.b, var_0.b, var_1.c, var_0.b)))), vec4<bool>(!(!var_1.c), !(!var_1.b), false, var_1.b));
    var_1 = global4[_wgslsmith_index_u32(47881u, 18u)];
    var var_3 = -(vec3<i32>(min(global1[_wgslsmith_index_u32(5931u, 20u)], var_1.a), -32038i, 0i) & firstLeadingBit(countOneBits(vec3<i32>(1i, 0i, -14153i)))) ^ vec3<i32>(i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(global1[_wgslsmith_index_u32(0u, 20u)], -1i)), global1[_wgslsmith_index_u32(~(~56922u), 20u)], global1[_wgslsmith_index_u32(42617u, 20u)]);
    return global0[_wgslsmith_index_u32(4294967295u, 8u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_0.d)), _wgslsmith_f_op_f32(-arg_3), all(vec3<bool>(false, arg_0.c, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * _wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_f32(-1346f - _wgslsmith_f_op_f32(floor(-2524f))))));
    var var_1 = Struct_1(func_2().e, true, 1u <= ~(_wgslsmith_dot_vec4_u32(vec4<u32>(23414u, 0u, 40396u, 27939u), arg_1) ^ ~42257u), arg_3, -_wgslsmith_mult_i32(6416i, u_input.b));
    var var_2 = arg_0.a;
    let var_3 = ~17550i;
    global0 = array<Struct_1, 8>();
    return func_2();
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<bool> {
    global0 = array<Struct_1, 8>();
    let var_0 = func_5(func_2(), vec4<u32>(u_input.c, 1u, global3[_wgslsmith_index_u32(u_input.e, 20u)], _wgslsmith_mult_u32(~(~u_input.e), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(4294967295u, 20u)], u_input.c, u_input.c), 20u)], u_input.c))), _wgslsmith_f_op_f32(arg_0.d * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1818f * _wgslsmith_f_op_f32(max(476f, arg_2.x)))))), arg_2.x);
    let var_1 = vec3<u32>(~_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(abs(~u_input.e), 20u)], 133995u, ~_wgslsmith_sub_u32(u_input.c, 0u)), ~countOneBits(~u_input.e), ~_wgslsmith_mult_u32(4294967295u, global3[_wgslsmith_index_u32(select(81933u, reverseBits(global3[_wgslsmith_index_u32(28451u, 20u)]), arg_1.b), 20u)]));
    var var_2 = arg_1;
    var var_3 = arg_1;
    return vec3<bool>(0i < ~arg_1.e, var_0.c, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = Struct_1((~firstLeadingBit(0i) >> (max(47150u & u_input.c, 25353u) % 32u)) & u_input.d.x, all(vec4<bool>(!(global3[_wgslsmith_index_u32(u_input.c, 20u)] >= global3[_wgslsmith_index_u32(var_0, 20u)]), true, true, all(func_1(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(88124u, 20u)], 18u)], Struct_1(-1i, false, true, 309f, -70753i), vec2<f32>(1350f, -232f))))), func_2().c && true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-674f * -1246f), _wgslsmith_f_op_f32(f32(-1f) * -1262f))))), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<i32>(-1i) * -min(vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 20u)], -9357i, u_input.a, 2147483647i), vec4<i32>(var_1.e, 2391i, -43302i, -15293i))));
}

