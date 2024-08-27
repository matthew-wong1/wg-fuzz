struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(999f, 853f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = array<f32, 2>();
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.a.x, 28284i, 2147483647i)), -_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(arg_0.a, 852i, 14417i))), ~(~(~firstLeadingBit(arg_0.a))));
    var_0 = _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(~_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-1i, arg_0.a, -1i)), ~_wgslsmith_add_i32(45701i, u_input.a.x), _wgslsmith_mult_i32(21110i, 0i))), _wgslsmith_sub_vec3_i32(u_input.a, _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(arg_0.a, 0i, arg_0.a)), u_input.a.x, 19305i))));
    global0 = array<f32, 2>();
    return i32(-1i) * -u_input.a.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>) -> Struct_2 {
    global0 = array<f32, 2>();
    let var_0 = Struct_1(countOneBits(-func_3(Struct_1(u_input.a.x))));
    global0 = array<f32, 2>();
    var var_1 = ~(~(~(~(~vec3<u32>(4294967295u, 30341u, 0u)))));
    var var_2 = var_0;
    return Struct_2(Struct_1(_wgslsmith_clamp_i32(-var_0.a ^ -35066i, func_3(Struct_1(47751i)), ~1i >> (~4294967295u % 32u))), 0u, ~reverseBits(select(~vec3<u32>(var_1.x, var_1.x, 4294967295u), select(vec3<u32>(62977u, 1u, var_1.x), vec3<u32>(var_1.x, 44444u, 0u), false), vec3<bool>(false, false, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec2<bool>(false, true)), true), any(vec3<bool>(true, true, true))), vec4<bool>(true, all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), var_1.x == 1u, all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true))), true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = arg_1.a;
    let var_1 = Struct_1(-9944i);
    let var_2 = vec3<bool>((var_1.a >= (i32(-1i) * -45007i)) && any(arg_1.d.yy), false, select(any(select(vec2<bool>(arg_2.x, true), vec2<bool>(false, false), vec2<bool>(false, arg_1.d.x))) && (!arg_1.d.x & true), arg_1.d.x, false));
    var_0 = arg_0;
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1757f, -310f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(81504u, 2u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.c, arg_1.c), 2u)], _wgslsmith_div_f32(-1016f, -1000f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1243f, -1488f, -1000f, 2308f), vec4<f32>(global0[_wgslsmith_index_u32(78704u, 2u)], -954f, -291f, -516f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(arg_1.b, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], 584f, global0[_wgslsmith_index_u32(4294967295u, 2u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(473f, 532f), vec2<f32>(-1969f, -1041f))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(134109u, 2u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.c.x, 2u)])), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2709f, global0[_wgslsmith_index_u32(19490u, 2u)]))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(71207u, 2u)], 324f), vec2<f32>(383f, -1230f), false)))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-413f, global0[_wgslsmith_index_u32(0u, 2u)], 132f, global0[_wgslsmith_index_u32(arg_1.b, 2u)]) * vec4<f32>(-1019f, -503f, 1081f, global0[_wgslsmith_index_u32(arg_1.b, 2u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1844f, 200f) * vec2<f32>(-1220f, global0[_wgslsmith_index_u32(arg_1.b, 2u)]))).d.wy))));
    return arg_1;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = func_4(Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~u_input.a.zz, u_input.a.yy & u_input.a.zx), _wgslsmith_dot_vec2_i32(-u_input.a.xz, vec2<i32>(-45994i, 0i)), u_input.a.x)), func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], -1095f, global0[_wgslsmith_index_u32(17260u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(arg_0.x, 2u)], -559f, 523f)))), vec2<f32>(390f, 1000f)), vec3<bool>(true, true, true));
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    var var_1 = vec4<f32>(125f, _wgslsmith_f_op_f32(floor(920f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(arg_0.x, 2u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(417f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_0.c.x, 2u)])))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(335f, 1000f, false)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(33487u, 2u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(685f, 1083f, false)) * global0[_wgslsmith_index_u32(var_0.c.x, 2u)])), 2250f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(623f)))));
    return Struct_1(var_0.a.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a);
    return func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(25006u, 2u)], arg_1.x, -115f, global0[_wgslsmith_index_u32(30713u, 2u)]) * vec4<f32>(global0[_wgslsmith_index_u32(44580u, 2u)], 298f, global0[_wgslsmith_index_u32(1u, 2u)], arg_1.x)) * vec4<f32>(382f, 147f, arg_1.x, 318f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, global0[_wgslsmith_index_u32(70159u, 2u)], global0[_wgslsmith_index_u32(44515u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)])))))), _wgslsmith_f_op_vec2_f32(trunc(arg_1.zx))).a;
}

fn func_6(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_3, ~(~23764u)), _wgslsmith_mod_vec2_u32(vec2<u32>(~(~2238u), select(select(1u, 1u, false), arg_3, true)), func_4(Struct_1(arg_2.a), Struct_2(Struct_1(arg_2.a), arg_3, ~vec3<u32>(1u, arg_3, arg_3), vec4<bool>(true, arg_1.x, true, true)), select(func_2(vec4<f32>(1936f, arg_0, -1000f, global0[_wgslsmith_index_u32(arg_3, 2u)]), vec2<f32>(global0[_wgslsmith_index_u32(4153u, 2u)], -972f)).d.zyz, func_2(vec4<f32>(arg_0, arg_0, 319f, -1485f), vec2<f32>(arg_0, -133f)).d.wxx, !arg_1.x)).c.yz));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-411f)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(45423u, arg_3), 2u)]))) + arg_0), -1753f);
    let var_2 = Struct_2(arg_2, 71098u, ~(~(~abs(vec3<u32>(arg_3, 6290u, arg_3)))), vec4<bool>(select(any(select(vec4<bool>(false, false, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x))), arg_1.x, -531f == _wgslsmith_f_op_f32(exp2(arg_0))), false, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(abs(14324u), 2u)], -1079f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), any(vec4<bool>(true, false, true, arg_0 == arg_0))));
    let var_3 = select(func_3(arg_2), firstLeadingBit(firstLeadingBit(max(-1i, select(var_2.a.a, 2147483647i, arg_1.x)))), true);
    var_0 = 4294967295u;
    return func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, global0[_wgslsmith_index_u32(3041u, 2u)], global0[_wgslsmith_index_u32(20108u, 2u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 2u)], 503f, -488f, global0[_wgslsmith_index_u32(4294967295u, 2u)])))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, 1713f, arg_0, 668f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(4294967295u, 2u)], 1145f, 805f), vec4<f32>(arg_0, 1178f, arg_0, arg_0)))) * vec4<f32>(579f, _wgslsmith_f_op_f32(-123f - 176f), arg_0, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 2u)] + global0[_wgslsmith_index_u32(arg_3, 2u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(var_2.c.x, 2u)], arg_0)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, global0[_wgslsmith_index_u32(var_2.c.x, 2u)]), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1324f, -317f), vec2<f32>(global0[_wgslsmith_index_u32(17960u, 2u)], global0[_wgslsmith_index_u32(var_2.b, 2u)]))))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_i32(u_input.a.yz, select(vec2<i32>(u_input.a.x >> (0u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(36507i, u_input.a.x, 1i), vec3<i32>(u_input.a.x, u_input.a.x, 37318i))), reverseBits(vec2<i32>(u_input.a.x, 1i)), !all(vec2<bool>(true, true))) | vec2<i32>(~(-1i | u_input.a.x), 33887i));
    global0 = array<f32, 2>();
    var var_1 = Struct_2(func_6(295f, vec2<bool>(true, true), func_5(func_1(~vec3<u32>(0u, 16377u, 0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-977f, -1540f, -712f))) + vec3<f32>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], -702f))), min(17528u, firstLeadingBit(27270u))), ~1u, ~vec3<u32>(1u, _wgslsmith_mult_u32(~4294967295u, max(0u, 1u)), firstTrailingBit(1u)), vec4<bool>(any(vec2<bool>(true, true)) || false, !((-1675f != global0[_wgslsmith_index_u32(92422u, 2u)]) & true), true, -(~var_0.x) != _wgslsmith_div_i32(-var_0.x, firstTrailingBit(u_input.a.x))));
    let var_2 = i32(-1i) * -2147483647i;
    var var_3 = ~0u;
    let var_4 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, _wgslsmith_sub_u32(~_wgslsmith_add_u32(4294967295u, var_1.c.x), 4294967295u)), 2u)], -12705i);
}

