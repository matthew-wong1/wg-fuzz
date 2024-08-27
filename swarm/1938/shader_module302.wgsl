struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    global1 = array<f32, 15>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-111f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(1u, 15u)])) - _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.a, 15u)]))), _wgslsmith_f_op_f32(trunc(523f)), global1[_wgslsmith_index_u32(25815u, 15u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(765f, -1110f, 1000f, global1[_wgslsmith_index_u32(u_input.a, 15u)])));
    global0 = -(0i >> ((~abs(u_input.a) | 1u) % 32u));
    global0 = i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-49113i, -1i, -2147483647i), countOneBits(vec3<i32>(15625i, 0i, 33570i))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(55007i, -454i), vec2<i32>(-1i, 1i)), 14834i));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-369f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(32714u, 15u)])), _wgslsmith_div_f32(-577f, var_0.x), var_0.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(max(0u, 4294967295u), _wgslsmith_mult_u32(u_input.a, u_input.a)), 15u)]) - vec4<f32>(-485f, global1[_wgslsmith_index_u32(u_input.a, 15u)], var_0.x, 1037f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.a, 15u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2481f - var_0.x))), _wgslsmith_f_op_f32(-394f + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 15u)]))))));
    return select(vec3<bool>(!(true | select(false, true, false)), all(vec4<bool>(false, false, true, true)), any(vec3<bool>(all(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, true, false)), any(vec4<bool>(false, false, true, true))))), select(vec3<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), any(vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false))), !select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), all(vec2<bool>(true, true))));
}

fn func_4(arg_0: bool) -> i32 {
    global0 = reverseBits(countOneBits(-45044i));
    global0 = -(~1i);
    global0 = i32(-1i) * -32350i;
    global1 = array<f32, 15>();
    var var_0 = 9277u;
    return 0i;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1112f, global1[_wgslsmith_index_u32(u_input.a ^ 3604u, 15u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_f_op_f32(1675f + global1[_wgslsmith_index_u32(4294967295u, 15u)])))), func_4(any(func_3())), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-2147483647i, 0i, 0i), ~vec3<i32>(2692i, 22785i, 9395i)), abs(vec3<i32>(1i, 1i, 1i))), ~vec3<i32>(min(1i, -51417i), 1i, 1i)), vec3<bool>(true, !any(func_3()), !all(vec2<bool>(false, false))));
    var var_1 = var_0.c.x;
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 530f, global1[_wgslsmith_index_u32(arg_0.x, 15u)], -1489f)))) * _wgslsmith_f_op_vec4_f32(-var_0.a)), 1i, vec3<i32>(-1i, i32(-1i) * -39992i, var_0.b), select(vec3<bool>(true, var_0.d.x, false), var_0.d, false));
    var_1 = 83120i;
    var var_3 = var_2.c.x;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_2.a.x, 861f, var_0.d.x)), -1447f));
}

fn func_5(arg_0: f32) -> i32 {
    global1 = array<f32, 15>();
    let var_0 = vec2<i32>(-1i) * -select(-_wgslsmith_mult_vec2_i32(vec2<i32>(6571i, 1i), vec2<i32>(17769i, -34979i)), ~vec2<i32>(0i, -9097i) << (countOneBits(vec2<u32>(u_input.a, 61586u)) % vec2<u32>(32u)), !all(vec3<bool>(false, false, true)));
    global1 = array<f32, 15>();
    global0 = _wgslsmith_mult_i32(-_wgslsmith_div_i32(min(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 54238i, 29537i), vec3<i32>(-38991i, var_0.x, -1484i)), var_0.x), var_0.x), var_0.x);
    let var_1 = _wgslsmith_add_u32(4294967295u, ~(~reverseBits(_wgslsmith_div_u32(4294967295u, u_input.a))));
    return _wgslsmith_mult_i32(-var_0.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.x, _wgslsmith_sub_i32(var_0.x, 1i)), -1i));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = vec3<i32>(i32(-1i) * -(i32(-1i) * -2147483647i), func_5(_wgslsmith_f_op_f32(func_2(countOneBits(vec3<u32>(u_input.a, u_input.a, 4294967295u))))), func_4(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))))) | vec3<i32>(abs(~31977i), -1i, select((24255i << (0u % 32u)) << (~u_input.a % 32u), min(reverseBits(-34578i), i32(-1i) * -2147483647i), true));
    global1 = array<f32, 15>();
    var var_1 = Struct_1(all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), u_input.a == 33336u), true)));
    var var_2 = vec3<bool>(true, all(!(!select(vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(true, var_1.a, var_1.a)))), false);
    var_2 = func_3();
    return Struct_1(false);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_5 {
    let var_0 = vec3<bool>(arg_0.a || (arg_0.a && true), !arg_0.a || all(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), arg_0.a);
    return Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1[_wgslsmith_index_u32(~u_input.a, 15u)], global1[_wgslsmith_index_u32(19036u >> (u_input.a % 32u), 15u)], global1[_wgslsmith_index_u32(arg_1.x, 15u)])), 5860i, abs(vec3<i32>(func_5(523f), firstTrailingBit(_wgslsmith_mod_i32(-64881i, -2147483647i)), _wgslsmith_mod_i32(-33851i, -63282i))), select(var_0, select(select(select(vec3<bool>(false, arg_0.a, var_0.x), vec3<bool>(false, arg_0.a, false), arg_0.a), !vec3<bool>(false, arg_0.a, arg_0.a), var_0), vec3<bool>(false, true, -102f == global1[_wgslsmith_index_u32(12828u, 15u)]), var_0.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(-2147483647i);
    var var_0 = -425f;
    global1 = array<f32, 15>();
    global1 = array<f32, 15>();
    global1 = array<f32, 15>();
    var var_1 = func_6(func_1(_wgslsmith_mod_i32(1i << (max(u_input.a, 57807u) % 32u), 12322i)), vec3<u32>(min(_wgslsmith_sub_u32(~1u, ~33881u), 0u), _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, firstLeadingBit(u_input.a)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(62548u, u_input.a), _wgslsmith_mult_u32(49114u, u_input.a))), min(u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 6854u, 0u, u_input.a), select(vec4<u32>(u_input.a, u_input.a, 0u, 0u), vec4<u32>(52089u, u_input.a, 24922u, 10497u), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(2710u, var_1.a.x, reverseBits(_wgslsmith_dot_vec2_i32(firstLeadingBit(var_1.c.yy), -vec2<i32>(-10175i, var_1.c.x) & ~var_1.c.zz)));
}

