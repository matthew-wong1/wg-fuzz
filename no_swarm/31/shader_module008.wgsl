struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: bool = false;

var<private> global2: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(8033i, 25821i), vec2<i32>(-1i, -6277i), vec2<i32>(5136i, -91815i), vec2<i32>(2147483647i, -60808i), vec2<i32>(-1i, 2147483647i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.a.x, -1i, -u_input.a.x), vec3<i32>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 24572u)), select(vec4<u32>(22464u, 10292u, 0u, 4294967295u), vec4<u32>(88490u, 1u, 20707u, 50112u), false)), 4u)], countOneBits(75029i), select(u_input.a.x, global0[_wgslsmith_index_u32(~0u, 4u)], true & any(vec4<bool>(true, true, false, true)))));
    global1 = false;
    var_0 = vec3<i32>(_wgslsmith_add_i32(14985i, 4777i), i32(-1i) * -2147483647i, var_0.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-552f)) + -3236f)), 1112f));
    let var_2 = select(!select(vec3<bool>(true, select(false, false, true), select(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), any(vec2<bool>(false, true)))), !select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), true), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, false, false, false))), select(vec3<bool>(global0[_wgslsmith_index_u32(38264u, 4u)] <= u_input.a.x, true, all(vec4<bool>(true, true, true, false))), vec3<bool>(select(true, false, true), true, true), true), vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-321f - var_1))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1) == _wgslsmith_f_op_f32(max(1240f, var_1)))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<i32> {
    var var_0 = arg_1.a;
    global1 = true;
    let var_1 = 30923u;
    global0 = array<i32, 4>();
    var var_2 = Struct_3(Struct_2(Struct_1(all(vec4<bool>(arg_1.a, false, false, arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b, arg_1.b, arg_1.a))), arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.b, -1111f)), _wgslsmith_f_op_f32(round(420f)))), !select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, arg_1.a), !arg_1.a), Struct_1(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-920f, -2246f, false)), arg_1.b), -abs(vec3<i32>(arg_1.c.x, 2147483647i, 20541i)))));
    return var_2.a.d.c;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(step(1149f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-251f * -397f))))))), func_4(vec4<u32>(1u, 1u, 1u, 1u), Struct_1(true, _wgslsmith_f_op_f32(select(-962f, _wgslsmith_f_op_f32(func_3()), true)), firstTrailingBit(vec3<i32>(-1i, 14170i, arg_0))), vec2<i32>(378i, max(2147483647i, -47695i))));
    global0 = array<i32, 4>();
    var var_1 = Struct_3(Struct_2(Struct_1((global0[_wgslsmith_index_u32(0u, 4u)] == 50648i) != false, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.b)), -481f)), ~max(var_0.c, vec3<i32>(-13421i, arg_0, 27200i))), var_0.b, !vec2<bool>(var_0.a, !var_0.a), Struct_1(true, var_0.b, var_0.c)));
    global2 = array<vec2<i32>, 5>();
    var var_2 = Struct_2(var_1.a.d, var_0.b, var_1.a.c, Struct_1(true, var_1.a.a.b, vec3<i32>(1i, _wgslsmith_mult_i32(1i, countOneBits(-17934i)), -26248i)));
    return all(select(select(select(!vec4<bool>(false, var_0.a, false, var_2.c.x), select(vec4<bool>(var_1.a.d.a, var_1.a.a.a, false, false), vec4<bool>(true, var_1.a.d.a, var_2.a.a, var_2.c.x), vec4<bool>(true, var_2.a.a, var_0.a, var_2.c.x)), any(vec3<bool>(var_0.a, true, var_0.a))), !vec4<bool>(var_0.a, var_0.a, var_1.a.d.a, false), select(select(vec4<bool>(var_1.a.a.a, var_2.a.a, false, var_0.a), vec4<bool>(var_2.d.a, var_2.c.x, true, true), var_0.a), vec4<bool>(var_0.a, false, true, true), true)), select(!(!vec4<bool>(false, false, var_0.a, true)), !vec4<bool>(var_0.a, true, false, true), var_2.c.x), false));
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<i32>, arg_3: vec4<u32>) -> bool {
    return arg_0.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    let var_0 = arg_2.a.d;
    var var_1 = Struct_1(false, arg_2.a.d.b, var_0.c);
    global0 = array<i32, 4>();
    global1 = func_5(vec4<bool>(func_2(var_1.c.x >> (~arg_0.x % 32u)), var_0.a, !var_1.a, var_0.a), _wgslsmith_add_u32(33936u, _wgslsmith_mod_u32(1u, arg_0.x)), ~vec4<i32>(var_0.c.x, abs(global0[_wgslsmith_index_u32(abs(arg_0.x), 4u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(31065u, 9882u ^ arg_0.x), 4u)], ~(-global0[_wgslsmith_index_u32(248u, 4u)])), ~select(_wgslsmith_div_vec4_u32(vec4<u32>(55156u, 1u, arg_0.x, arg_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, 7418u, arg_0.x), vec4<u32>(arg_0.x, 0u, 0u, 4294967295u))), vec4<u32>(1u, 4294967295u, arg_0.x, _wgslsmith_dot_vec2_u32(arg_0.yy, vec2<u32>(arg_0.x, 27591u))), !all(vec3<bool>(true, false, true))));
    var var_2 = !arg_1;
    return arg_2.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.a & ~_wgslsmith_div_vec2_i32(~global2[_wgslsmith_index_u32(115419u, 5u)], min(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a)));
    let var_1 = Struct_3(Struct_2(func_1(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 38339u)), true, Struct_3(Struct_2(Struct_1(false, -344f, vec3<i32>(2235i, u_input.a.x, global0[_wgslsmith_index_u32(13568u, 4u)])), -2249f, vec2<bool>(true, true), Struct_1(true, -793f, vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1278f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_div_f32(1315f, -1815f))), true)), vec2<bool>(func_5(vec4<bool>(true, true, true, true), 17127u, _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 12784i, 41348i, var_0.x), vec4<i32>(-1i, 756i, global0[_wgslsmith_index_u32(44261u, 4u)], -2147483647i)), ~vec4<u32>(1u, 0u, 8770u, 36175u)), select(true, true, false)), Struct_1(all(vec3<bool>(true, false, true)) & (u_input.a.x == u_input.a.x), 1f, vec3<i32>(min(-2147483647i, u_input.a.x), -var_0.x, max(global0[_wgslsmith_index_u32(16454u, 4u)], global0[_wgslsmith_index_u32(78930u, 4u)])))));
    let var_2 = var_1.a;
    global0 = array<i32, 4>();
    let var_3 = Struct_2(var_1.a.d, var_2.b, vec2<bool>(true, func_2(reverseBits(0i))), func_1(~vec3<u32>(1u, 1u, 1u), false, Struct_3(Struct_2(func_1(vec3<u32>(44970u, 51006u, 36686u), var_2.c.x, var_1), _wgslsmith_f_op_f32(-var_2.d.b), var_1.a.c, func_1(vec3<u32>(0u, 0u, 3797u), var_2.a.a, Struct_3(Struct_2(var_2.a, var_2.a.b, vec2<bool>(var_1.a.c.x, false), var_1.a.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-861f - 116f), var_1.a.a.b, _wgslsmith_f_op_f32(var_1.a.d.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1076f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.d.b)))), _wgslsmith_sub_vec2_u32(vec2<u32>(~(~0u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 65251u), vec2<u32>(42542u, 7461u))), vec2<u32>(~(~51144u), _wgslsmith_div_u32(1u, 64717u))));
}

