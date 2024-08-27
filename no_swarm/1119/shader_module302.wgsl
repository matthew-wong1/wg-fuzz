struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_3,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(13533u, 1u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, 66568u), vec3<u32>(u_input.a.x, 0u, u_input.a.x)), ~vec3<u32>(u_input.a.x, 0u, 1u) >> ((vec3<u32>(u_input.a.x, 96218u, 48617u) ^ vec3<u32>(0u, u_input.a.x, 0u)) % vec3<u32>(32u))), ~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a.x), vec3<u32>(0u, 0u, 17011u)), vec3<u32>(u_input.a.x, 1u, 77018u) & vec3<u32>(4294967295u, u_input.a.x, 61404u)), vec3<u32>(_wgslsmith_dot_vec2_u32(abs(u_input.a), vec2<u32>(u_input.a.x, u_input.a.x)), ~1u, ~(~3191u))), ~_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(11192u, u_input.a.x, 1u)) & _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(0u, u_input.a.x, u_input.a.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.x, 24667u)));
    let var_1 = reverseBits(_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, var_0.x, 2766u), vec3<u32>(u_input.a.x, 34766u, var_0.x))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(min(vec3<u32>(4294967295u, 70285u, 4294967295u), vec3<u32>(1u, 46247u, var_0.x)), max(vec3<u32>(var_0.x, 0u, u_input.a.x), vec3<u32>(5462u, u_input.a.x, u_input.a.x))), ~(~vec3<u32>(u_input.a.x, u_input.a.x, var_0.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(311f, -1055f, -399f, -181f))))))));
    var var_3 = vec3<bool>(!(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x + var_2.x))) <= 1941f), select(false, any(vec3<bool>(true, true, true)), true), true);
    var var_4 = Struct_2(83852u, !select(false, true && var_3.x, true), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1310f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)))), !(var_2.x != var_2.x))), ~vec2<i32>(firstTrailingBit(-32937i), countOneBits(-2147483647i)), var_2.wzx, var_0.x), Struct_1(var_2.x, select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -1i), -vec2<i32>(2147483647i, 1i), vec2<i32>(50802i, -1i)), max(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)), select(select(var_3.yy, var_3.yy, var_3.xy), select(var_3.yz, vec2<bool>(var_3.x, var_3.x), var_3.x), var_3.x)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -707f), -234f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<f32>(651f, _wgslsmith_div_f32(-220f, 1000f), _wgslsmith_div_f32(394f, var_2.x))), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(10726u, var_0.x), var_0.xy)));
    return i32(-1i) * -2147483647i;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> Struct_1 {
    let var_0 = select(vec3<bool>(true, all(vec2<bool>(true, true)), (arg_0.x < -401f) || true), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(false, false))), vec3<bool>(true, !all(vec4<bool>(true, true, true, false)), true), true), true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + arg_0.x)) * _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(269f, arg_0.x)) + _wgslsmith_f_op_f32(select(arg_0.x, 654f, false))))), _wgslsmith_sub_vec2_i32(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 41732i), min(vec2<i32>(arg_1, arg_1), vec2<i32>(19342i, arg_1)))), reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(arg_1, -2147483647i))) | vec2<i32>(~arg_1, func_3())), arg_0.xzy, _wgslsmith_add_u32(u_input.a.x, 47u));
    let var_2 = (-(~(-vec4<i32>(var_1.b.x, var_1.b.x, arg_1, 1i))) >> (~(~(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u))) | abs(abs(~vec4<i32>(1i, 2147483647i, var_1.b.x, var_1.b.x)));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1053f);
    var_3 = _wgslsmith_f_op_f32(min(-217f, -2481f));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_2(4294967295u, (~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.b.x, -51025i), vec3<i32>(arg_0.b.x, arg_0.b.x, 0i)) ^ arg_0.b.x) == abs(arg_0.b.x), Struct_1(arg_0.a, arg_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.c - arg_0.c)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(277f, arg_0.a, -156f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1488f, arg_0.c.x, -1160f)))), abs(84941u)), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.c.x, -909f, 1407f, arg_0.c.x), vec4<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.a))) + vec4<f32>(arg_0.a, arg_0.a, -279f, -1512f)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -648f), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_div_f32(-1016f, 783f), arg_0.c.x)), ~reverseBits(-1i)));
    var var_1 = vec3<f32>(-1197f, _wgslsmith_f_op_f32(trunc(var_0.d.c.x)), -680f);
    var_0 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1631f, -1007f, var_1.x, var_1.x), vec4<f32>(var_0.c.a, 478f, 234f, -1219f))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_0.d.c.x, 1000f, var_1.x)))), select(-61418i, 937i, any(select(vec4<bool>(arg_1, var_0.b, true, arg_1), vec4<bool>(true, true, false, var_0.b), true)))).d, var_0.b, arg_0, arg_0);
    var_0 = Struct_2(~17223u, arg_0.a < _wgslsmith_f_op_f32(-arg_0.c.x), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-147f, var_0.d.c.x, -273f, -487f) + vec4<f32>(-473f, var_0.c.a, 486f, -324f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(750f, -1359f, 883f, -1112f), vec4<f32>(arg_0.c.x, arg_0.a, var_1.x, 684f))))) * _wgslsmith_div_vec4_f32(vec4<f32>(-453f, arg_0.a, -607f, -1702f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1130f, var_1.x, var_1.x, arg_0.c.x)))), 0i), Struct_1(var_0.d.a, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, var_1.x, var_0.c.c.x, 746f)) - vec4<f32>(489f, -740f, var_1.x, var_0.c.a)), func_2(vec4<f32>(-236f, arg_0.c.x, 1151f, var_1.x), 2147483647i).b.x).b, vec3<f32>(_wgslsmith_f_op_f32(-392f + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -192f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x)))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 11554u ^ u_input.a.x, ~23349u), select(~vec4<u32>(6544u, 1u, var_0.d.d, 0u), ~vec4<u32>(12958u, arg_0.d, 4294967295u, var_0.c.d), !vec4<bool>(arg_1, true, true, false)))));
    var_0 = Struct_2(0u, arg_1, var_0.d, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -394f)), _wgslsmith_f_op_f32(f32(-1f) * -2551f))), vec2<i32>(arg_0.b.x, -1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(arg_0.a + 446f), _wgslsmith_f_op_f32(-1000f - var_1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1437f, -1130f, var_1.x))), _wgslsmith_div_u32(arg_0.d, max(4294967295u, func_2(vec4<f32>(arg_0.a, var_0.d.c.x, arg_0.a, -125f), 35207i).d))));
    return var_0.c;
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> f32 {
    let var_0 = func_4(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.c.x), arg_0.b.x, -2186f, _wgslsmith_f_op_f32(1056f - arg_0.b.x)) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.c.c.x), arg_0.b.x)), arg_0.c.b.x), select(any(!(!vec3<bool>(true, true, arg_0.a))), !arg_0.a, !any(select(vec3<bool>(true, arg_0.a, false), vec3<bool>(arg_0.a, true, true), vec3<bool>(arg_0.a, arg_0.a, false)))));
    let var_1 = arg_1;
    let var_2 = Struct_3(!(any(vec4<bool>(false, false, arg_0.a, arg_0.a)) & !arg_0.a) && arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(arg_0.c.c.yx)))) + _wgslsmith_div_vec2_f32(arg_0.c.c.xy, func_4(var_0, arg_0.a).c.xx))), func_4(arg_0.c, !(firstTrailingBit(arg_0.c.b.x) < -22136i)), ~arg_0.d);
    var var_3 = all(select(!vec3<bool>(false, true, select(false, var_2.a, true)), vec3<bool>(all(vec2<bool>(false, var_2.a)), !all(vec2<bool>(true, true)), arg_0.a), vec3<bool>(_wgslsmith_f_op_f32(-var_0.a) > arg_0.b.x, all(select(vec2<bool>(var_2.a, arg_0.a), vec2<bool>(true, true), true)), arg_0.a)));
    var var_4 = _wgslsmith_f_op_f32(-643f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1499f)) * 1969f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + _wgslsmith_f_op_f32(var_0.a * -1045f)))) != 1667f;
    return _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_2.c.c.x, arg_0.c.c.x, var_0.c.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(867f, arg_0.b.x, var_2.c.a, var_0.a)))), ~2147483647i).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~48584u);
    var var_1 = firstTrailingBit(reverseBits(vec3<u32>(select(firstTrailingBit(41335u), _wgslsmith_sub_u32(3026u, var_0), true), 18466u, 0u)));
    var var_2 = 428f;
    let var_3 = Struct_2((((var_1.x ^ u_input.a.x) >> (~4294967295u % 32u)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, 8566u, 16286u), vec4<u32>(var_0, 0u, 38978u, 4294967295u) & vec4<u32>(u_input.a.x, var_1.x, 9091u, 1u)) % 32u)) & _wgslsmith_add_u32(_wgslsmith_mult_u32(~var_0, abs(var_1.x)), var_0 << (4986u % 32u)), !(!any(vec4<bool>(false, false, true, false)) & true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1517f + 1126f), _wgslsmith_f_op_f32(abs(-876f))) - _wgslsmith_div_f32(-238f, _wgslsmith_f_op_f32(f32(-1f) * -545f))), -reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(-27205i, -29488i), vec2<i32>(-39360i, -22789i))), vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(false, vec2<f32>(553f, 1172f), Struct_1(-1000f, vec2<i32>(3395i, 47329i), vec3<f32>(-1000f, -191f, 312f), var_0), vec4<u32>(4294967295u, var_0, 4294967295u, var_0)), _wgslsmith_dot_vec2_i32(vec2<i32>(12688i, 0i), vec2<i32>(-1651i, -2147483647i)))), 1848f, -1372f), var_1.x), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(203f - -1552f)), _wgslsmith_f_op_f32(round(-559f)))), vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 18227i), vec2<i32>(-12297i, -1i) >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))), ~1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1468f, -179f, 287f), vec3<f32>(2368f, 333f, -1000f))))), u_input.a.x));
    var_2 = var_3.c.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~var_3.c.b.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.c.a, 116f, 1002f, -372f), vec4<f32>(var_3.d.c.x, var_3.c.c.x, 1050f, var_3.d.c.x), var_3.b)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.c.c.x, var_3.c.a, var_3.d.a, -1577f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.a, -343f, -797f, _wgslsmith_f_op_f32(f32(-1f) * -152f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-252f, 302f, 1019f, -1218f) + vec4<f32>(965f, var_3.d.c.x, var_3.d.a, var_3.c.a)))), select(vec4<bool>(var_3.b, any(vec3<bool>(var_3.b, var_3.b, false)), var_3.b, var_3.b && var_3.b), vec4<bool>(var_3.b, all(vec4<bool>(var_3.b, var_3.b, var_3.b, true)), !var_3.b, true), !select(vec4<bool>(var_3.b, false, var_3.b, false), vec4<bool>(true, true, var_3.b, var_3.b), var_3.b)))), 1779f, var_3.c.c.x);
}

