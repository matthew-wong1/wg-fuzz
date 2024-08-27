struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<f32, 22>;

var<private> global1: array<f32, 21>;

var<private> global2: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: f32) -> vec2<f32> {
    var var_0 = vec2<bool>(true, true);
    global0 = array<f32, 22>();
    var var_1 = -2147483647i;
    let var_2 = any(!vec2<bool>(var_0.x, global1[_wgslsmith_index_u32(~11079u, 21u)] != arg_0));
    global1 = array<f32, 21>();
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1881f), _wgslsmith_f_op_f32(f32(-1f) * -1561f));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_4) -> vec3<i32> {
    global0 = array<f32, 22>();
    var var_0 = arg_0.x;
    let var_1 = _wgslsmith_dot_vec4_u32(select(~vec4<u32>(4294967295u, 0u, 40435u, 91710u), ~vec4<u32>(1u, 26135u, 118507u, 6217u), false), ~(~select(vec4<u32>(161u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 57598u, 30448u, 29355u), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)))) >> (~_wgslsmith_mult_u32(min(0u, 1u), ~1u) % 32u);
    global2 = array<vec3<bool>, 30>();
    global2 = array<vec3<bool>, 30>();
    return _wgslsmith_mult_vec3_i32(arg_2.c.yzz, firstLeadingBit(firstLeadingBit(_wgslsmith_sub_vec3_i32(arg_1.a, arg_2.c.yww))) << (~_wgslsmith_mod_vec3_u32(min(vec3<u32>(4294967295u, var_1, var_1), vec3<u32>(4294967295u, var_1, 4294967295u)), vec3<u32>(0u, 4644u, 4294967295u)) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec3<i32>) -> i32 {
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f * -1000f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 4294967295u)), 22u)], global0[_wgslsmith_index_u32(~4294967295u, 22u)])), Struct_2(~arg_0, _wgslsmith_f_op_f32(1615f + -986f))), firstTrailingBit(~arg_0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 0i), -1i, ~(arg_0.x >> (66287u % 32u)), _wgslsmith_sub_i32(-arg_0.x, -arg_0.x)), firstTrailingBit(~(~vec4<i32>(-1i, -23174i, u_input.a.x, 14025i)))), arg_0.x, u_input.a.x);
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(~1u, ~0u, _wgslsmith_mod_u32(4294967295u, 1u), _wgslsmith_clamp_u32(1u, 4294967295u, 1u))), vec4<u32>(_wgslsmith_mod_u32(~27969u, countOneBits(4294967295u)), 1u, 1u, _wgslsmith_div_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 44727u, 0u), vec3<u32>(1u, 4294967295u, 18714u))))), vec4<u32>(50513u | select(~4294967295u, abs(61231u), 18919i != u_input.a.x), _wgslsmith_mult_u32(117256u, max(42025u, _wgslsmith_dot_vec2_u32(vec2<u32>(90993u, 4294967295u), vec2<u32>(5255u, 35397u)))), select(~0u, ~1u, all(vec4<bool>(true, true, true, true))), _wgslsmith_clamp_u32(37418u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 10184u, 1u), vec3<u32>(4294967295u, 1u, 0u)), ~(~0u))));
    let var_2 = var_0.a.b;
    let var_3 = var_0.b;
    var var_4 = Struct_2(countOneBits(~(~arg_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(469f))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1, countOneBits(6896u)), 21u)])));
    return arg_0.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: vec4<u32>) -> Struct_3 {
    global1 = array<f32, 21>();
    let var_0 = 1u;
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_3.yxx, vec3<u32>(var_0, arg_3.x, 12075u)), 21u)], 515f, _wgslsmith_f_op_f32(f32(-1f) * -722f))), Struct_2(abs(-vec3<i32>(1i, arg_0.a.x, arg_2)), 178f)), 2147483647i, _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, -1i, 2147483647i, arg_0.a.x), -vec4<i32>(arg_0.a.x, arg_2, 2147483647i, arg_0.a.x)) << ((arg_3 ^ reverseBits(select(arg_3, arg_3, false))) % vec4<u32>(32u)), -33447i, -func_4(func_3(vec2<bool>(false, true), arg_0, Struct_4(Struct_3(vec3<f32>(-760f, 619f, global1[_wgslsmith_index_u32(35347u, 21u)]), arg_0), 13649i, vec4<i32>(arg_0.a.x, arg_2, arg_2, arg_2), arg_2, u_input.a.x)) >> (min(arg_3.zwx, vec3<u32>(4294967295u, arg_1, 34826u)) % vec3<u32>(32u))));
    var var_2 = -244f;
    var var_3 = arg_3.x >= ~1u;
    return var_1.a;
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = func_2(Struct_2(vec3<i32>(select(arg_0, -1i, 1671f >= arg_2.b), arg_1.c.x, _wgslsmith_clamp_i32(arg_2.a.x, abs(u_input.a.x), i32(-1i) * -20239i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(353f)) + _wgslsmith_f_op_f32(2670f * arg_2.b)))), ~(~firstLeadingBit(~1u)), arg_2.a.x, max(vec4<u32>(countOneBits(0u), 4294967295u, 24197u, ~1u), vec4<u32>(1u, 1u, 1u, 1u)) << ((vec4<u32>(~0u, 89975u, _wgslsmith_div_u32(5263u, 70346u), 1u) << (firstTrailingBit(~vec4<u32>(95824u, 59879u, 0u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global0 = array<f32, 22>();
    var var_1 = -463f;
    global0 = array<f32, 22>();
    var var_2 = Struct_1(-vec3<i32>(-2147483647i, ~func_3(vec2<bool>(true, true), var_0.b, Struct_4(Struct_3(vec3<f32>(1573f, arg_1.a.b.b, -857f), Struct_2(arg_1.c.xyz, -2130f)), u_input.a.x, vec4<i32>(arg_1.b, arg_1.c.x, -1i, u_input.a.x), arg_0, 31796i)).x, max(38391i, countOneBits(arg_2.a.x))), true);
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-335f + 230f)), arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x << (7360u % 32u);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-546f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-212f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 22u)] - 3573f))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -404f) + -606f))))));
    global1 = array<f32, 21>();
    global2 = array<vec3<bool>, 30>();
    let x = u_input.a;
    s_output = func_5(~1i, Struct_4(func_2(Struct_2(~vec3<i32>(-74965i, u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -405f)), _wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(0u, 1u)), ~(~1i), ~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mod_i32(1i, i32(-1i) * -u_input.a.x), select(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 59755i, -15590i, u_input.a.x), vec4<i32>(-9894i, -2147483647i, 0i, u_input.a.x)) << (~vec4<u32>(0u, 38488u, 1u, 23113u) % vec4<u32>(32u)), vec4<i32>(func_3(vec2<bool>(true, true), Struct_2(vec3<i32>(0i, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(20408u, 21u)]), Struct_4(Struct_3(vec3<f32>(global1[_wgslsmith_index_u32(26329u, 21u)], global1[_wgslsmith_index_u32(24224u, 21u)], global0[_wgslsmith_index_u32(0u, 22u)]), Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(25586u, 21u)])), u_input.a.x, vec4<i32>(u_input.a.x, -9249i, -33794i, -2147483647i), u_input.a.x, u_input.a.x)).x, u_input.a.x, u_input.a.x, 0i), !all(global2[_wgslsmith_index_u32(1u, 30u)])), u_input.a.x, i32(-1i) * -4162i), Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(-u_input.a, firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x))), max(u_input.a.x << (19389u % 32u), max(u_input.a.x, 0i)), ~(u_input.a.x & u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1255f * global1[_wgslsmith_index_u32(52375u, 21u)]))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 17425u)), 21u)]))));
}

