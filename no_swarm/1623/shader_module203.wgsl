struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false));

var<private> global1: array<bool, 7>;

var<private> global2: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true));

var<private> global3: array<Struct_3, 22>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> u32 {
    var var_0 = 37026u;
    global3 = array<Struct_3, 22>();
    global0 = array<vec3<bool>, 7>();
    var var_1 = max(~10814u, 0u);
    var var_2 = arg_1;
    return _wgslsmith_mult_u32(34668u, ~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 39427u));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<bool>) -> u32 {
    let var_0 = u_input.a.ww;
    let var_1 = Struct_2(-_wgslsmith_add_vec4_i32(select(~vec4<i32>(-17317i, -2147483647i, arg_1.x, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, -43716i, arg_1.x, arg_1.x), vec4<i32>(-24482i, arg_1.x, -20575i, 0i)), vec4<bool>(true, true, true, true)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, -9310i, -1i, arg_1.x), vec4<i32>(arg_1.x, arg_1.x, -25300i, -1i), vec4<i32>(2147483647i, -23315i, arg_1.x, 16124i)), vec4<i32>(2561i, arg_1.x, arg_1.x, arg_1.x), !global2[_wgslsmith_index_u32(47166u, 4u)])));
    global3 = array<Struct_3, 22>();
    return var_0.x;
}

fn func_2() -> u32 {
    var var_0 = !select(false | global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.a), u_input.a ^ vec4<u32>(u_input.a.x, 4294967295u, 96568u, 4294967295u)), 7u)], 83467u == _wgslsmith_div_u32(1u, select(28939u, u_input.a.x, true)), !global1[_wgslsmith_index_u32(u_input.a.x, 7u)]);
    var var_1 = global1[_wgslsmith_index_u32(func_4(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(Struct_3(1f, _wgslsmith_f_op_f32(floor(-913f))), Struct_2(vec4<i32>(-1i, 0i, -1i, 2147483647i)), -130f), firstTrailingBit(~(~8820u))), 7u)], vec2<i32>(~(~(-4291i)) << (1u % 32u), -(~_wgslsmith_div_i32(-2147483647i, 2889i))), select(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(24069u, 7u)], select(!select(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], vec3<bool>(global1[_wgslsmith_index_u32(0u, 7u)], false, global1[_wgslsmith_index_u32(4294967295u, 7u)])), global0[_wgslsmith_index_u32(4294967295u, 7u)], all(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)]))))), 7u)];
    let var_2 = u_input.a.x;
    let var_3 = Struct_1(abs(~u_input.a.yz), ~(1i << (var_2 % 32u)), ~1u);
    let var_4 = Struct_4(Struct_2(select(vec4<i32>(2147483647i, var_3.b, 15259i, 1i), reverseBits(vec4<i32>(-1i, -31188i, -1i, var_3.b)), any(global0[_wgslsmith_index_u32(0u, 7u)])) ^ max(~vec4<i32>(var_3.b, var_3.b, -1i, var_3.b), ~vec4<i32>(var_3.b, var_3.b, var_3.b, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1000f))))), Struct_2(~(~vec4<i32>(1i, var_3.b, -16397i, var_3.b)) << (select(u_input.a, u_input.a, all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)], false, global1[_wgslsmith_index_u32(1u, 7u)]))) % vec4<u32>(32u))), Struct_3(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(436f - -1058f)) + _wgslsmith_f_op_f32(-1123f + _wgslsmith_f_op_f32(abs(-1119f))))), var_3.b);
    return 0u;
}

fn func_1() -> Struct_3 {
    let var_0 = abs(vec2<u32>(~func_2(), u_input.a.x));
    let var_1 = vec2<f32>(-1165f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-182f + -1805f), _wgslsmith_div_f32(-1236f, -665f))), 915f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1071f, _wgslsmith_f_op_f32(836f + 590f))), _wgslsmith_f_op_f32(select(-387f, -308f, global1[_wgslsmith_index_u32(2669u, 7u)])))));
    global1 = array<bool, 7>();
    var var_2 = abs(firstTrailingBit(select(1u, u_input.a.x, true) << (43640u % 32u)));
    global2 = array<vec4<bool>, 4>();
    return global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(u_input.a.x, ~8125u)), 22u)];
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> f32 {
    let var_0 = arg_2;
    let var_1 = Struct_4(Struct_2(~vec4<i32>(max(arg_2, var_0), var_0, 2147483647i | var_0, -29637i)), _wgslsmith_f_op_f32(floor(arg_3.b)), Struct_2(vec4<i32>(~13379i, -29903i, arg_2, var_0)), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_3.b, _wgslsmith_f_op_f32(624f + 1193f))), _wgslsmith_f_op_f32(arg_3.b - _wgslsmith_f_op_f32(-arg_3.b))), -929f), 79941i);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1().a))));
    var var_3 = Struct_1(min(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), u_input.a.zw), select(u_input.a.wx, _wgslsmith_mod_vec2_u32(u_input.a.zy, vec2<u32>(4294967295u, u_input.a.x)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], true))) & vec2<u32>(firstLeadingBit(1u), u_input.a.x)), ~var_0, ~35377u);
    global0 = array<vec3<bool>, 7>();
    return arg_0.a;
}

fn func_6(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    var var_0 = arg_2;
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x)))), arg_3.a, any(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(var_1, 7u)], global1[_wgslsmith_index_u32(0u, 7u)]), vec2<bool>(global1[_wgslsmith_index_u32(var_1, 7u)], false), global1[_wgslsmith_index_u32(1u, 7u)])))));
    var var_3 = vec2<bool>(all(vec4<bool>(any(global2[_wgslsmith_index_u32(~u_input.a.x, 4u)]), false, true, 53065i < arg_2.a.x)), true);
    var_2 = -1061f;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 7>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(972f))), -171f);
    var var_1 = Struct_1(u_input.a.yx, ~min(2147483647i, ~468i), u_input.a.x ^ reverseBits(~u_input.a.x));
    let var_2 = func_6(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(346f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1335f) * -1143f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_5(func_1(), var_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, var_1.b, var_1.b, 8786i), vec4<i32>(var_1.b, var_1.b, var_1.b, 18569i)), func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, 415f, global1[_wgslsmith_index_u32(4294967295u, 7u)])) - _wgslsmith_f_op_f32(sign(-619f))), var_0.b) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-495f, 1000f, var_0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 741f, var_0.a) * vec3<f32>(var_0.a, -1000f, var_0.a))))), Struct_2(vec4<i32>(_wgslsmith_sub_i32(-var_1.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 3186i), vec2<i32>(var_1.b, 51861i))), -45117i, ~var_1.b, ~var_1.b)), func_1());
    let var_3 = var_2.a.x;
    global0 = array<vec3<bool>, 7>();
    global3 = array<Struct_3, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(_wgslsmith_div_i32(var_2.a.x, 0i), var_2.a.x, max(var_3, -1i)) << (~vec3<u32>(var_1.c, u_input.a.x, var_1.a.x) % vec3<u32>(32u))), ~var_2.a, -758f, vec2<f32>(_wgslsmith_f_op_f32(round(var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0.a, 259f)), _wgslsmith_div_f32(var_0.a, 1671f))))), 23641u);
}

