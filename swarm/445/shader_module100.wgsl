struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = Struct_5(Struct_3(_wgslsmith_f_op_f32(arg_0.a + 510f), arg_0.b), 25674i, i32(-1i) * -1i);
    var var_1 = u_input.b << (u_input.b % 32u);
    var_1 = _wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(14171u, u_input.a.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~u_input.b, _wgslsmith_clamp_u32(4294967295u, u_input.d.x, u_input.c.x)), 0u), u_input.d.wy));
    global0 = array<vec2<bool>, 32>();
    let var_2 = Struct_3(var_0.a.a, select(!vec2<bool>(arg_0.b.x, !arg_0.b.x), global0[_wgslsmith_index_u32(1u, 32u)], true & any(vec4<bool>(var_0.a.b.x, true, arg_0.b.x, true))));
    return i32(-1i) * -(~24366i);
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_mod_u32(arg_0.x, 48267u);
    global0 = array<vec2<bool>, 32>();
    var var_1 = all(!vec3<bool>(all(vec4<bool>(true, true, true, true)), u_input.a.x < u_input.b, true));
    return _wgslsmith_f_op_f32(step(1298f, _wgslsmith_f_op_f32(trunc(-737f))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = i32(-1i) * -5579i;
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(258f * arg_0)), _wgslsmith_f_op_f32(func_4(u_input.d, func_3(Struct_3(1201f, global0[_wgslsmith_index_u32(arg_1, 32u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1635f)) - _wgslsmith_f_op_f32(abs(arg_2)))))), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-881f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -219f)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2046f, arg_0, var_1.x), vec3<f32>(arg_2, var_1.x, -690f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_2, -215f) + vec3<f32>(959f, 656f, -409f)))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(-282f)), -342f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1232f, 692f, -326f), vec3<f32>(342f, arg_2, arg_2))) * vec3<f32>(arg_0, -549f, arg_2))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, arg_0, 275f), vec3<f32>(-336f, arg_2, arg_0), true))) * vec3<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), var_1.x, -513f))));
    let var_3 = Struct_3(var_1.x, !(!global0[_wgslsmith_index_u32(u_input.d.x, 32u)]));
    let var_4 = all(!select(!select(vec3<bool>(var_3.b.x, var_3.b.x, true), vec3<bool>(var_3.b.x, true, false), vec3<bool>(var_3.b.x, var_3.b.x, var_3.b.x)), select(!vec3<bool>(var_3.b.x, var_3.b.x, var_3.b.x), vec3<bool>(false, false, false), true), var_3.b.x));
    return 1f;
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1625f, 2212f, -1486f, -137f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-261f, 344f, 1000f, 766f) - vec4<f32>(1725f, -398f, -708f, -500f)), true)))));
    global0 = array<vec2<bool>, 32>();
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -1236f) - _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - 422f) + _wgslsmith_f_op_f32(539f * _wgslsmith_f_op_f32(-var_0.x)))), var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -754f), _wgslsmith_mult_u32(u_input.c.x, u_input.a.x), 1699f))), var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(~vec4<u32>(79380u, 34009u, u_input.c.x, 1u), countOneBits(24084i), -1108f)))));
    let var_1 = var_0.x;
    var var_2 = Struct_2(Struct_1(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, false, true)), u_input.d.x > ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.a.xy), u_input.a.zy), Struct_1(vec4<bool>(true, any(vec4<bool>(false, false, false, true)), select(all(vec4<bool>(false, false, false, true)), true, true), false)), Struct_1(vec4<bool>(false, true, _wgslsmith_f_op_f32(-808f - var_0.x) >= _wgslsmith_f_op_f32(abs(var_0.x)), all(vec4<bool>(true, true, true, true)))));
    return Struct_2(Struct_1(select(var_2.d.a, vec4<bool>(false, any(vec2<bool>(var_2.c.a.x, false)), true, var_2.d.a.x), vec4<bool>(!var_2.c.a.x, true, var_2.b, arg_0 >= -1i))), _wgslsmith_f_op_f32(func_4(u_input.d ^ u_input.d, ~arg_0, _wgslsmith_f_op_f32(step(-728f, _wgslsmith_div_f32(var_0.x, var_0.x))))) == _wgslsmith_f_op_f32(681f - _wgslsmith_f_op_f32(-var_0.x)), var_2.a, Struct_1(var_2.c.a));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4) -> bool {
    var var_0 = ~(~(~vec4<i32>(-1i, 2147483647i, 42501i, 17926i)) ^ abs(select(vec4<i32>(2147483647i, 0i, -8997i, 0i), vec4<i32>(1i, 1i, 1i, 1i), func_1(-1i).a.a)));
    var var_1 = min(u_input.c.x, _wgslsmith_mod_u32(1u, ~(~arg_1.e.x)));
    var var_2 = Struct_4(arg_1.a, Struct_2(func_1(var_0.x).a, true, func_1(countOneBits(var_0.x ^ var_0.x)).d, Struct_1(arg_1.b.a.a)), vec2<bool>(arg_1.b.c.a.x, true), Struct_2(Struct_1(func_1(_wgslsmith_div_i32(var_0.x, -2147483647i)).a.a), !any(arg_1.b.a.a) | (arg_0.x || arg_0.x), func_1(~(i32(-1i) * -14340i)).a, func_1(var_0.x).a), ~vec4<u32>(max(firstLeadingBit(u_input.a.x), u_input.b), u_input.c.x & _wgslsmith_dot_vec4_u32(u_input.d, arg_1.e), _wgslsmith_dot_vec2_u32(~u_input.c, abs(vec2<u32>(arg_1.e.x, 4294967295u))), ~3100u));
    let var_3 = countOneBits(reverseBits(vec2<i32>(var_0.x, _wgslsmith_add_i32(-2147483647i, var_0.x)) ^ -min(var_0.xx, var_0.wz)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1165f * var_2.a)), -932f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, arg_1.a), -592f))));
    return _wgslsmith_dot_vec3_u32(u_input.a, var_2.e.wwy) > u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<i32>(firstTrailingBit(-(i32(-1i) * -10797i)), select(1i, -1i, false) >> (1u % 32u), -16560i), -vec3<i32>(-21431i, -_wgslsmith_sub_i32(0i, 37016i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(51295i, 27297i, 38528i, 2147483647i), vec4<i32>(5739i, 2147483647i, -1i, 19936i))), func_5(select(select(select(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], vec2<bool>(false, true), global0[_wgslsmith_index_u32(25051u, 32u)]), select(vec2<bool>(false, false), global0[_wgslsmith_index_u32(u_input.a.x, 32u)], vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, any(global0[_wgslsmith_index_u32(15783u, 32u)])), select(select(global0[_wgslsmith_index_u32(1u, 32u)], vec2<bool>(true, true), global0[_wgslsmith_index_u32(35164u, 32u)]), !global0[_wgslsmith_index_u32(u_input.a.x, 32u)], vec2<bool>(false, true))), Struct_4(-818f, Struct_2(Struct_1(vec4<bool>(true, true, true, false)), false, Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, false, true, true))), !select(vec2<bool>(false, true), global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(42906u, 32u)]), func_1(1i), u_input.d)));
    var var_1 = 391f;
    var var_2 = Struct_5(Struct_3(_wgslsmith_f_op_f32(func_4(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.a.x, u_input.a.x), u_input.a), min(u_input.c.x, u_input.b), 19785u, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.b, 7195u, 0u, 0u))), var_0.x, _wgslsmith_f_op_f32(func_4(vec4<u32>(u_input.a.x, u_input.c.x, 23245u, u_input.a.x), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -2252f))))), !global0[_wgslsmith_index_u32(countOneBits(u_input.d.x), 32u)]), var_0.x, 1i);
    var var_3 = Struct_3(-1212f, var_2.a.b);
    let var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(countOneBits(12269u), ~(~12242u), var_4, var_4), -5093i, ~_wgslsmith_div_u32(4294967295u, u_input.a.x), _wgslsmith_sub_vec3_i32(var_0, -countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, -9926i, -1i), vec3<i32>(-2147483647i, var_0.x, var_2.b)))));
}

