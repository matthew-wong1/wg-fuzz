struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(-7032i, 1i, 10625i, -49500i, 66675i, 1i, 12216i, 0i, -20881i);

var<private> global1: array<i32, 6> = array<i32, 6>(0i, 0i, 7616i, -52041i, -1i, 2147483647i);

var<private> global2: array<vec2<f32>, 30>;

var<private> global3: array<Struct_1, 5>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(~arg_3.x, 5u)];
    global1 = array<i32, 6>();
    global3 = array<Struct_1, 5>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(134f, _wgslsmith_div_f32(845f, 1f))), vec3<bool>(true, any(vec4<bool>(true, -11104i >= arg_0, true, all(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)))), !((true & var_0.b.x) && true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 565f, var_0.c.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 1104f))))), _wgslsmith_sub_vec3_i32(max(vec3<i32>(-39501i, arg_0, select(0i, var_0.d.x, false)), arg_1.wyy), arg_1.zxz));
    global2 = array<vec2<f32>, 30>();
    return global3[_wgslsmith_index_u32(arg_3.x, 5u)];
}

fn func_3() -> u32 {
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(54178u, 4294967295u, 9636u), vec3<u32>(20722u, 78638u, 1u), vec3<bool>(false, false, false)), select(vec3<u32>(10002u, 50587u, 4294967295u), vec3<u32>(4294967295u, 55090u, 1u), false)), 0u, 1u), vec3<u32>(~4294967295u, ~1u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 34326u), vec3<u32>(1u, 1u, 1u)))));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = func_2(-3590i, -vec4<i32>(~global1[_wgslsmith_index_u32(abs(arg_0), 6u)], -(~(-2147483647i)), -(-2147483647i ^ global1[_wgslsmith_index_u32(0u, 6u)]), 6521i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-299f, -163f))) + _wgslsmith_f_op_f32(f32(-1f) * -1216f)) + _wgslsmith_div_f32(515f, -484f)), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(20307u, arg_0, arg_0, 13801u) | vec4<u32>(7984u, 15199u, 35007u, 4294967295u), ~vec4<u32>(arg_0, 0u, 1u, 32387u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 77435u, arg_0, arg_0) << (vec4<u32>(4294967295u, arg_0, 1u, arg_0) % vec4<u32>(32u)), vec4<u32>(0u, arg_0, arg_0, 4294967295u) | vec4<u32>(3193u, 9366u, 0u, 0u), ~vec4<u32>(4294967295u, 4294967295u, 24406u, 1u)) % vec4<u32>(32u))));
    global1 = array<i32, 6>();
    let var_1 = _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(arg_0, 9u)], global0[_wgslsmith_index_u32(arg_0, 9u)], var_0.d.x), vec3<i32>(global1[_wgslsmith_index_u32(13635u, 6u)], global0[_wgslsmith_index_u32(arg_0, 9u)], u_input.b.x)), vec3<i32>(global1[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(arg_0, 9u)], global1[_wgslsmith_index_u32(arg_0, 6u)])), ~u_input.a) | (-2147483647i & _wgslsmith_mod_i32(~(~global1[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(arg_0, 6u)], -14389i)));
    let var_2 = _wgslsmith_div_f32(var_0.a, var_0.c.x);
    global3 = array<Struct_1, 5>();
    return abs(arg_0) ^ ~(~(4294967295u << (func_3() % 32u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool) -> u32 {
    let var_0 = 10507i;
    var var_1 = func_2(37691i, select(vec4<i32>(-firstLeadingBit(-2147483647i), 0i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, -1i), u_input.b), firstLeadingBit(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(arg_0.x, 6u)], u_input.a.x))), vec4<i32>(var_0, global0[_wgslsmith_index_u32(~1u, 9u)], _wgslsmith_mult_i32(var_0, -2147483647i), -2147483647i) | vec4<i32>(2147483647i, ~global0[_wgslsmith_index_u32(arg_0.x, 9u)], u_input.a.x, u_input.b.x | u_input.b.x), true), -1240f, vec4<u32>(28831u, arg_0.x, _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(35364u, 0u, arg_0.x), ~9508u, _wgslsmith_dot_vec3_u32(arg_0 >> (arg_0 % vec3<u32>(32u)), vec3<u32>(arg_0.x, 52640u, 17939u))), 21464u)).b.x;
    let var_2 = all(select(vec2<bool>(arg_1, true), select(vec2<bool>(arg_1, !arg_1), func_2(var_0, -vec4<i32>(1071i, -2147483647i, -1i, 37165i), _wgslsmith_f_op_f32(-397f - -469f), abs(vec4<u32>(arg_0.x, arg_0.x, 0u, 1u))).b.yz, vec2<bool>(false, false)), vec2<bool>(false | (arg_1 | arg_1), !(!arg_1))));
    var var_3 = select(select(!select(!vec2<bool>(var_2, var_2), func_2(6788i, vec4<i32>(var_0, global0[_wgslsmith_index_u32(arg_0.x, 9u)], global0[_wgslsmith_index_u32(47923u, 9u)], var_0), 875f, vec4<u32>(arg_0.x, 0u, 4294967295u, arg_0.x)).b.xy, var_2), func_2(38398i, ~vec4<i32>(82592i, var_0, 1667i, global1[_wgslsmith_index_u32(24572u, 6u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(130f, 390f) * 865f), vec4<u32>(arg_0.x, ~0u, 1u, arg_0.x | arg_0.x)).b.zx, !vec2<bool>(u_input.b.x == var_0, true)), !vec2<bool>(true, arg_1), select(func_2(_wgslsmith_sub_i32(2147483647i & global0[_wgslsmith_index_u32(arg_0.x, 9u)], -1i), -(~vec4<i32>(global0[_wgslsmith_index_u32(arg_0.x, 9u)], var_0, -1i, -1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -171f), -844f), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), vec4<u32>(33296u, arg_0.x, 1u, arg_0.x))).b.xy, select(vec2<bool>(true, !arg_1), select(vec2<bool>(true, true), vec2<bool>(var_2, var_2), vec2<bool>(var_2, false)), !(!vec2<bool>(var_2, false))), !var_2 && arg_1));
    global2 = array<vec2<f32>, 30>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1i;
    let var_1 = global3[_wgslsmith_index_u32(~(~(~1u)), 5u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - var_1.c.x)), var_1.a));
    var_0 = 0i;
    let var_3 = global3[_wgslsmith_index_u32(func_4(vec3<u32>(~(~0u), 1u, func_1(9206u)), true) ^ ~1u, 5u)];
    let var_4 = countOneBits(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(reverseBits(vec2<u32>(4294967295u, 1u))), select(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(42997u, 45137u), vec2<u32>(2502u, 5577u)), var_1.b.zx)), vec2<u32>(~reverseBits(4294967295u), ~(~49321u))));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(sign(var_3.a)), select(var_3.b, !var_1.b, !(!var_1.b.x)), vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), -1077f, -462f), vec3<i32>(_wgslsmith_sub_i32(-min(29815i, -1i), var_1.d.x), _wgslsmith_sub_i32(u_input.a.x, var_1.d.x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(max(var_3.d.x, global0[_wgslsmith_index_u32(var_4.x, 9u)]), reverseBits(var_1.d.x)), ~(-global0[_wgslsmith_index_u32(254u, 9u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(firstTrailingBit(var_1.d.x), _wgslsmith_mult_i32(0i, max(var_1.d.x, -2147483647i)), firstTrailingBit(_wgslsmith_sub_i32(1i, -23701i)), min(var_3.d.x, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(0u, 6u)], -1i))), -287f, _wgslsmith_f_op_f32(-var_5.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_div_f32(-203f, _wgslsmith_f_op_f32(round(var_1.c.x)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), -1221f))))), ~vec4<u32>(countOneBits(~78028u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.x, var_4.x, var_4.x, 1u), vec4<u32>(var_4.x, 1u, var_4.x, var_4.x)) ^ var_4.x, func_3(), ~firstTrailingBit(43413u)));
}

