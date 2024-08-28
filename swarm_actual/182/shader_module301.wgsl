struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> i32 {
    var var_0 = Struct_2(~(-62177i), arg_1.a);
    var_0 = Struct_2(_wgslsmith_add_i32(select((i32(-1i) * -13095i) & var_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.a.a, 11577i, var_0.b.a), ~u_input.a), any(select(vec2<bool>(false, false), global0[_wgslsmith_index_u32(0u, 27u)], vec2<bool>(false, false)))), -u_input.b.x), arg_1.a);
    var_0 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, arg_1.a.a, ~8679i, ~(~arg_1.a.a)), vec4<i32>(1i ^ arg_1.a.a, 2147483647i, 9509i, arg_1.a.a | 2147483647i) ^ vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_0.a, var_0.b.a, 0i, u_input.a.x)), max(-4869i, -1295i), ~var_0.a, -1i)), Struct_1(-1i));
    var_0 = Struct_2(-28761i, Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.a, -1i, 12712i), -u_input.a.yxz)));
    global0 = array<vec2<bool>, 27>();
    return 2147483647i;
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3, arg_3: u32) -> Struct_2 {
    global0 = array<vec2<bool>, 27>();
    let var_0 = Struct_3(Struct_1(~_wgslsmith_sub_i32(~u_input.a.x, -arg_1.b.a)));
    let var_1 = Struct_3(var_0.a);
    let var_2 = arg_2;
    let var_3 = Struct_1(_wgslsmith_add_i32(firstLeadingBit(countOneBits(u_input.b.x)), func_3(~4294967295u, Struct_3(var_0.a), 0i) ^ var_2.a.a));
    return Struct_2(_wgslsmith_dot_vec3_i32(~(u_input.b.zww ^ u_input.a.xzy), -u_input.a.yyz) | (i32(-1i) * -2147483647i), var_3);
}

fn func_1() -> Struct_2 {
    let var_0 = (vec2<u32>(u_input.d, u_input.c) ^ ~(~vec2<u32>(28611u, 60860u))) ^ vec2<u32>(_wgslsmith_div_u32(u_input.d, u_input.c), 42140u);
    return func_2(_wgslsmith_add_i32(0i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, u_input.b.x, 22630i), -countOneBits(u_input.a.wyx))), Struct_4(~2625u, Struct_1(reverseBits(u_input.a.x))), Struct_3(Struct_1(-1i)), 71354u);
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = 40652u;
    var var_1 = _wgslsmith_mult_vec2_i32(u_input.b.zy, countOneBits(~u_input.b.zy));
    var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(5750u, 1u, select(u_input.c, u_input.d, true)), u_input.d, u_input.c, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(9962u, 0u), vec2<u32>(0u, u_input.d)), ~vec2<u32>(95900u, u_input.d))), vec4<u32>(4294967295u, ~_wgslsmith_dot_vec3_u32(min(vec3<u32>(84613u, u_input.d, u_input.c), vec3<u32>(4294967295u, 9144u, 1u)), reverseBits(vec3<u32>(47085u, u_input.c, u_input.c))), u_input.c, u_input.d));
    global0 = array<vec2<bool>, 27>();
    let var_2 = ~vec4<i32>(~(arg_1.a | 13917i), u_input.b.x >> (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(70079u, 0u, u_input.c, u_input.c), vec4<u32>(u_input.d, u_input.c, 4294967295u, u_input.d))) % 32u), var_1.x, ~(-2147483647i));
    return func_2(_wgslsmith_add_i32(~(-firstLeadingBit(2147483647i)), -1i), Struct_4(~countOneBits(~27882u), Struct_1(abs(2147483647i))), Struct_3(func_1().b), 0u);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec3<i32> {
    var var_0 = true;
    let var_1 = Struct_1(2147483647i);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-811f - -1413f)))), _wgslsmith_f_op_f32(-899f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-721f * _wgslsmith_f_op_f32(step(-1000f, 834f))), 1373f, true))), !(!all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false)))));
    global0 = array<vec2<bool>, 27>();
    var var_3 = Struct_3(func_4(u_input.b.x, Struct_2(func_4(i32(-1i) * -1i, func_1()).a, arg_0.b)).b);
    return _wgslsmith_sub_vec3_i32(firstTrailingBit(u_input.a.xxx), u_input.b.zzy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, true);
    var_0 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(254f, 502f) - -125f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -629f), -1000f))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -753f))), var_0.x, true);
    var var_1 = ~u_input.d;
    let var_2 = func_5(func_4(49700i, func_1()), func_2(func_3(0u, Struct_3(Struct_1(u_input.b.x)), -min(-1i, 1i)), Struct_4(u_input.d, func_4(-17580i, func_1()).b), Struct_3(func_4(i32(-1i) * -32066i, func_1()).b), 25651u).b, Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, u_input.a), -countOneBits(u_input.b))), func_1().b.a);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-207f, -1614f)), 2188f)) * _wgslsmith_f_op_f32(f32(-1f) * -1492f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1065f)), 2063f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -183f) * _wgslsmith_f_op_f32(f32(-1f) * -1365f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-495f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1138f - 1252f) + _wgslsmith_f_op_f32(f32(-1f) * -1598f)))), -876f);
    var var_4 = Struct_3(func_2(_wgslsmith_add_i32(~_wgslsmith_sub_i32(u_input.b.x, -1i), _wgslsmith_div_i32(-3629i, 1i & var_2.x)), Struct_4(_wgslsmith_add_u32(0u, abs(u_input.d)), Struct_1(38720i)), Struct_3(func_1().b), u_input.c).b);
    var var_5 = vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_add_u32(~108598u, u_input.c), ~u_input.c), u_input.d, _wgslsmith_sub_u32(u_input.d, 1u));
    var_5 = reverseBits(vec3<u32>(~(_wgslsmith_sub_u32(2526u, u_input.c) | u_input.c), var_5.x, reverseBits(~_wgslsmith_mult_u32(u_input.c, 4294967295u))));
    global0 = array<vec2<bool>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(var_3, vec4<f32>(var_3.x, -719f, -787f, var_3.x))))) + var_3)), var_2, 0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-656f, _wgslsmith_f_op_f32(-var_3.x)))), 917f));
}

