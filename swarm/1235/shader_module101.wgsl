struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, false, false, false, true, true, true, true, true, true, true, false, true, true, false, false, false, true, true, true, true, true, true, false, true, true);

var<private> global1: array<vec2<bool>, 30>;

var<private> global2: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-984f, -133f, -185f), vec3<f32>(-890f, -485f, -519f), vec3<f32>(1000f, -1051f, -713f), vec3<f32>(-139f, -1220f, 1110f), vec3<f32>(1000f, 286f, 465f));

var<private> global3: Struct_1 = Struct_1(vec2<i32>(-47192i, -40879i));

var<private> global4: array<f32, 29> = array<f32, 29>(1338f, 663f, 1683f, 2032f, 1780f, -313f, -613f, -959f, 1177f, 892f, -242f, 1000f, -2576f, -801f, -347f, 366f, 165f, -1330f, 1000f, -899f, 1271f, 673f, 253f, 927f, -222f, -725f, 681f, 470f, 270f);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32, arg_3: i32) -> i32 {
    let var_0 = -724f;
    let var_1 = vec4<bool>(true, (any(select(global1[_wgslsmith_index_u32(arg_1.a, 30u)], global1[_wgslsmith_index_u32(9628u, 30u)], global1[_wgslsmith_index_u32(arg_0.a, 30u)])) || global0[_wgslsmith_index_u32(arg_1.a, 26u)]) || global0[_wgslsmith_index_u32(min(arg_1.a << (arg_0.a % 32u), select(firstTrailingBit(arg_0.a), ~arg_1.a, !global0[_wgslsmith_index_u32(4294967295u, 26u)])), 26u)], false, true);
    var var_2 = i32(-1i) * -u_input.b.x;
    let var_3 = vec4<i32>(-24192i, -2147483647i, global3.a.x, arg_2);
    global3 = Struct_1(countOneBits(global3.a));
    return arg_2;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: i32) -> vec2<f32> {
    var var_0 = Struct_2(global3.a, abs(vec3<i32>(8785i, ~u_input.a.x, _wgslsmith_add_i32(global3.a.x, arg_2 << (70778u % 32u)))), Struct_1(_wgslsmith_clamp_vec2_i32(~global3.a, vec2<i32>(abs(arg_2), func_3(Struct_4(42800u), Struct_4(0u), 51448i, 8087i)), reverseBits(select(u_input.b.yz, u_input.b.yz, arg_1)))));
    var_0 = Struct_2(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(global3.a.x, arg_2) << ((vec2<u32>(1u, 4294967295u) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)), global3.a), -(~u_input.a)), countOneBits(min(firstTrailingBit(firstTrailingBit(var_0.b)), _wgslsmith_div_vec3_i32(var_0.b, reverseBits(vec3<i32>(0i, var_0.c.a.x, 5583i))))), Struct_1(~(~vec2<i32>(global3.a.x, -2147483647i)) ^ ~max(vec2<i32>(0i, arg_2), var_0.a)));
    global2 = array<vec3<f32>, 5>();
    var var_1 = -1000f;
    var_0 = Struct_2(vec2<i32>(_wgslsmith_dot_vec3_i32(-u_input.b, u_input.b), u_input.a.x), var_0.b, var_0.c);
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global4[_wgslsmith_index_u32(min(firstTrailingBit(1u), max(4661u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(26160u, 1u, 1u, 31245u)))), 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -777f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 29u)], 936f))), vec2<f32>(global4[_wgslsmith_index_u32(~4365u, 29u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(48496u, 29u)] - -1192f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 29u)]), global4[_wgslsmith_index_u32(1u, 29u)]) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(490f, global4[_wgslsmith_index_u32(0u, 29u)])))))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32) -> vec2<i32> {
    var var_0 = Struct_1(min(vec2<i32>(-1i) * -(u_input.a & vec2<i32>(-1i, -12821i)), vec2<i32>(-1i, -1i)));
    let var_1 = u_input.b.yx;
    global3 = Struct_1(var_0.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(0u, 29u)], 149f)), arg_0.x))))));
    var var_3 = _wgslsmith_mult_u32(firstTrailingBit(reverseBits(1u)), 0u);
    return u_input.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<i32>) -> vec4<bool> {
    var var_0 = vec2<u32>(4294967295u, ~arg_1.a);
    var var_1 = select(vec2<i32>(-abs(arg_0.x), 2147483647i | u_input.b.x), arg_2.xz, global0[_wgslsmith_index_u32(4294967295u, 26u)]);
    global2 = array<vec3<f32>, 5>();
    var_1 = _wgslsmith_mult_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.x, ~1i), ~vec2<i32>(arg_2.x, -1i)), select(func_4(_wgslsmith_f_op_vec2_f32(func_2(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 26u)], true, global0[_wgslsmith_index_u32(1u, 26u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1.a, 26u)], global0[_wgslsmith_index_u32(32093u, 26u)], true), global0[_wgslsmith_index_u32(51776u, 26u)]), true, 1i)), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(10114u, 29u)])), -u_input.b.xz, !global1[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(4294967295u, arg_1.a), 9513u, global0[_wgslsmith_index_u32(var_0.x, 26u)]), 30u)]));
    global2 = array<vec3<f32>, 5>();
    return vec4<bool>(arg_1.a <= ~4294967295u, global4[_wgslsmith_index_u32(var_0.x, 29u)] >= global4[_wgslsmith_index_u32(arg_1.a, 29u)], true, global0[_wgslsmith_index_u32(~(var_0.x ^ _wgslsmith_div_u32(0u, 1u)), 26u)]);
}

fn func_5(arg_0: vec4<bool>) -> vec3<f32> {
    var var_0 = abs(~(~_wgslsmith_mult_u32(4294967295u, 0u)));
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_add_i32(-14248i, ~u_input.a.x), min(1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, 2147483647i, 1i), u_input.b))));
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    var_1 = Struct_1(var_1.a);
    return global2[_wgslsmith_index_u32(4294967295u, 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-541f, 998f, global4[_wgslsmith_index_u32(25521u, 29u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 29u)] - _wgslsmith_f_op_f32(f32(-1f) * -581f)));
    let var_1 = global2[_wgslsmith_index_u32(41483u >> (abs(_wgslsmith_mod_u32(846u, firstLeadingBit(_wgslsmith_add_u32(5744u, 0u)))) % 32u), 5u)];
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2482f, 1000f, var_1.x, var_1.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_0.x, var_0.x, global4[_wgslsmith_index_u32(71151u, 29u)]), vec4<f32>(-1402f, global4[_wgslsmith_index_u32(1u, 29u)], var_0.x, var_0.x), true))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1327f, 1000f))))), vec4<f32>(-752f, 168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 29u)] * var_1.x))), _wgslsmith_f_op_f32(var_1.x - -529f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.xwz, global2[_wgslsmith_index_u32(73385u, 5u)]))) + _wgslsmith_f_op_vec3_f32(func_5(func_1(vec4<i32>(-30914i, -2147483647i, 6940i, global3.a.x), Struct_4(62973u), vec3<i32>(global3.a.x, -41024i, global3.a.x))))), _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, 0u), 5u)] - vec3<f32>(_wgslsmith_f_op_f32(trunc(1159f)), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 29u)] - var_0.x), var_0.x)), !((true & global0[_wgslsmith_index_u32(4294967295u, 26u)]) && true))) + global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~1u), 5u)]);
    var var_3 = -2147483647i;
    let var_4 = Struct_2(u_input.b.zy, _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), u_input.b), abs(u_input.b.x)), u_input.b), select(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, global3.a.x, 39028i) << (vec3<u32>(48113u, 0u, 0u) % vec3<u32>(32u))), ~vec3<i32>(u_input.b.x, 38632i, u_input.a.x), global0[_wgslsmith_index_u32(85476u, 26u)]), -_wgslsmith_add_vec3_i32(select(u_input.b, u_input.b, vec3<bool>(global0[_wgslsmith_index_u32(35858u, 26u)], false, global0[_wgslsmith_index_u32(4294967295u, 26u)])), -vec3<i32>(61388i, 0i, 1i))), Struct_1(u_input.a));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, 592f, var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1256f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -635f, -128f, var_1.x)), vec4<f32>(507f, -1000f, var_0.x, var_0.x)))))));
    global0 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, min(~_wgslsmith_mod_u32(0u, 72365u), abs(abs(0u))), ~61186u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 47006u), vec2<u32>(13422u, 4294967295u)))), vec3<u32>(_wgslsmith_clamp_u32(47344u, ~reverseBits(4294967295u), 1u), abs(~(~36796u)), ~1u), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(517f, -1236f))), var_0.wz)));
}

