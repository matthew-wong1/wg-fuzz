struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(1u, 48027u, 4294967295u, 0u, 1u, 42321u, 19990u, 14289u, 4294967295u, 4294967295u, 1u, 1u, 34552u, 32718u, 24777u, 49491u, 1561u, 36866u, 106520u, 1u, 0u, 22600u, 92478u, 0u, 1u, 1u, 0u, 12762u, 13700u, 0u, 0u);

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-849f, -753f, -834f, -492f), true, 45832i, true, 7380u);

var<private> global2: array<vec2<f32>, 21>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>) -> vec4<f32> {
    var var_0 = vec2<bool>(any(arg_1), arg_0.a.d);
    return global1.a;
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(192f, -1435f, global1.a.x, global1.a.x))))))), true, u_input.d, any(vec4<bool>(any(vec3<bool>(true, global1.b, false)), global0[_wgslsmith_index_u32(u_input.c.x, 31u)] != u_input.b.x, !global1.b, !global1.b)) && global1.d, global0[_wgslsmith_index_u32(countOneBits(global1.e), 31u)]);
    let var_1 = Struct_1(global1.a, true, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(select(~vec3<i32>(1i, 2647i, -34171i), ~vec3<i32>(u_input.a, -1i, 2i), vec3<bool>(false, global1.b, false)), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, -42304i, u_input.a), firstLeadingBit(var_0.c), u_input.d)), _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(0i, 88562i), i32(-1i) * -8750i, 2147483647i)), all(vec2<bool>(true, any(vec4<bool>(var_0.d, global1.b, true, false)))) || var_0.d, 13106u & _wgslsmith_dot_vec4_u32(firstLeadingBit(abs(vec4<u32>(var_0.e, var_0.e, u_input.e, 38786u))), abs(select(vec4<u32>(1u, var_0.e, 19664u, 0u), vec4<u32>(178u, global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(u_input.c.x, 31u)], u_input.b.x), vec4<bool>(var_0.b, global1.d, var_0.b, var_0.d)))));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, global1.a.x) + -1188f), _wgslsmith_f_op_f32(exp2(var_0.a.x)), var_0.a.x, _wgslsmith_f_op_f32(round(var_0.a.x))), var_0.b, abs(u_input.a << (0u % 32u)), any(!(!vec4<bool>(var_0.b, true, true, var_0.b))), _wgslsmith_dot_vec3_u32(~(u_input.c | vec3<u32>(1u, 1u, global0[_wgslsmith_index_u32(49517u, 31u)])), u_input.c));
    global0 = array<u32, 31>();
    var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(1f, _wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)), global1.a.x, var_0.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1596f, var_1.a.x, var_0.a.x, -781f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a + var_0.a) + _wgslsmith_f_op_vec4_f32(-global1.a)))), ~_wgslsmith_mod_i32(9125i, u_input.d) != _wgslsmith_mod_i32(var_2.c, 26846i), var_2.c, true | (countOneBits(global1.c) > _wgslsmith_add_i32(~0i, global1.c)), var_0.e);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-661f)), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_2.a.x * 310f)) + vec4<f32>(_wgslsmith_f_op_f32(327f * 1000f), _wgslsmith_f_op_f32(abs(global1.a.x)), -1457f, var_1.a.x)) + vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, var_2.a.x)), _wgslsmith_f_op_f32(step(-888f, var_2.a.x)), _wgslsmith_f_op_f32(-104f * _wgslsmith_f_op_f32(max(global1.a.x, var_2.a.x))))) * vec4<f32>(_wgslsmith_f_op_f32(sign(-776f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-348f + var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a.x))), -1691f));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) + vec4<f32>(arg_0.a.x, global1.a.x, -618f, global1.a.x)), true, -1i, true, _wgslsmith_add_u32(arg_0.e, _wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(u_input.b.x, 31u)]))), vec3<i32>(-23657i, -2147483647i, ~38479i) | -_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.c, arg_0.c, -1i), vec3<i32>(1i, u_input.a, global1.c)), !select(!vec3<bool>(global1.b, global1.d, false), !vec3<bool>(global1.d, arg_0.b, true), true), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(arg_1, vec4<u32>(51494u, arg_1.x, global0[_wgslsmith_index_u32(u_input.c.x, 31u)], 1u)), vec4<u32>(44984u, u_input.e, u_input.e, 111497u)), ~arg_1.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global1.a.xxy)))))), select(select(vec4<bool>(true || global1.b, !arg_0.d, arg_0.d, true), vec4<bool>(global1.e == 0u, any(vec3<bool>(false, arg_0.d, global1.b)), any(vec4<bool>(arg_0.b, global1.b, arg_0.d, global1.b)), arg_1.x == global1.e), !(1585f > global1.a.x)), select(select(select(vec4<bool>(true, true, arg_0.b, global1.d), vec4<bool>(true, true, true, arg_0.d), vec4<bool>(arg_0.d, arg_0.b, global1.d, arg_0.d)), select(vec4<bool>(arg_0.d, arg_0.d, false, false), vec4<bool>(arg_0.d, true, true, true), global1.d), false), select(select(vec4<bool>(true, false, true, arg_0.b), vec4<bool>(arg_0.b, arg_0.d, true, false), vec4<bool>(true, false, global1.d, arg_0.d)), !vec4<bool>(global1.d, true, true, false), !vec4<bool>(arg_0.b, false, true, true)), !(!vec4<bool>(global1.d, false, false, global1.b))), global1.b))).x;
    return !vec4<bool>(true, true, all(select(!vec2<bool>(arg_0.d, true), vec2<bool>(arg_0.b, true), arg_0.d && arg_0.b)), all(select(!vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(global1.b, arg_0.d, true), global1.d || global1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 21>();
    var var_0 = vec2<u32>(abs(50186u) ^ ((1u | ~u_input.c.x) ^ u_input.b.x), u_input.c.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(global1.a, true, u_input.a, true && global1.b, firstLeadingBit(926u)), vec3<i32>(~(-1i), global1.c, u_input.d), vec3<bool>(true, any(vec4<bool>(false, false, global1.b, global1.d)), global1.d), ~abs(u_input.b), vec3<f32>(_wgslsmith_f_op_f32(sign(global1.a.x)), _wgslsmith_f_op_f32(round(global1.a.x)), 1539f)), vec4<bool>(select(!global1.b, true, global1.d), false == (global0[_wgslsmith_index_u32(2737u, 31u)] >= 0u), all(vec3<bool>(true, global1.b, true)) & true, global1.b))), any(!(!(!vec4<bool>(global1.b, global1.d, global1.b, true)))), _wgslsmith_div_i32(firstLeadingBit(-75442i), _wgslsmith_div_i32(global1.c, reverseBits(countOneBits(-1i)))), all(select(select(vec4<bool>(false, global1.b, false, global1.b), func_2(Struct_1(vec4<f32>(445f, global1.a.x, -1213f, -371f), global1.b, u_input.d, global1.b, global1.e), vec4<u32>(u_input.e, u_input.b.x, global1.e, 4294967295u)), select(vec4<bool>(true, global1.d, true, global1.b), vec4<bool>(false, global1.d, global1.d, true), false)), select(vec4<bool>(false, global1.d, global1.b, global1.b), !vec4<bool>(global1.b, global1.d, global1.d, false), true), global1.b)), _wgslsmith_div_u32(global1.e >> (1u % 32u), _wgslsmith_mod_u32(global1.e, ~(~var_0.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), -124f, _wgslsmith_f_op_f32(select(399f, global1.a.x, false)), -1672f) * vec4<f32>(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(var_1, vec3<i32>(-1i, 30887i, global1.c), vec3<bool>(global1.d, false, true), u_input.b, vec3<f32>(var_1.a.x, -1044f, -127f)), vec4<bool>(false, global1.d, global1.d, true))).x, _wgslsmith_f_op_f32(step(var_1.a.x, var_1.a.x)), _wgslsmith_f_op_f32(abs(global1.a.x)), _wgslsmith_f_op_f32(global1.a.x + var_1.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) * _wgslsmith_f_op_vec4_f32(-global1.a)) + vec4<f32>(1734f, _wgslsmith_f_op_f32(1649f * 556f), _wgslsmith_f_op_f32(-var_1.a.x), 868f)))), !(~(~u_input.a) != ~var_1.c), firstTrailingBit(_wgslsmith_mod_i32(-12681i, max(global1.c, global1.c))), true, ~abs(firstTrailingBit(~15419u)));
    global0 = array<u32, 31>();
    var var_3 = var_1;
    global0 = array<u32, 31>();
    var var_4 = -800f;
    var_0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 20988u), u_input.c), ~(var_1.e & 4294967295u), ~17033u), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(20846u, global0[_wgslsmith_index_u32(0u, 31u)], var_3.e), vec3<u32>(42712u, var_1.e, u_input.b.x))) >> ((vec3<u32>(1u, 1u, 25264u) ^ u_input.c) % vec3<u32>(32u))), 0i, ~(~countOneBits(u_input.c)) << (~u_input.c % vec3<u32>(32u)));
}

