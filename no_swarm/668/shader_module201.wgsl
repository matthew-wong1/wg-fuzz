struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 370f;

var<private> global1: array<f32, 20>;

var<private> global2: f32;

var<private> global3: i32 = -59127i;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    return Struct_1(false, vec4<bool>(false, !(!arg_0.e), arg_0.a, true), u_input.c, abs(_wgslsmith_mod_i32(~arg_0.d, 2395i)), arg_0.a);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>) -> bool {
    var var_0 = func_2(Struct_1(!(22660u > u_input.c), vec4<bool>(!arg_1.x, any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), arg_1.x, !all(vec4<bool>(false, true, false, true))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~u_input.c, 4294967295u), _wgslsmith_add_u32(_wgslsmith_add_u32(1u, u_input.c), _wgslsmith_div_u32(4294967295u, u_input.c))), 9137i, (u_input.a >> (countOneBits(u_input.c) % 32u)) != firstLeadingBit(u_input.b.x)), -abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(1i, -18455i, u_input.d, u_input.d), _wgslsmith_mod_vec4_i32(vec4<i32>(8368i, u_input.d, u_input.a, 1i), vec4<i32>(0i, u_input.b.x, -18552i, u_input.a)))));
    var var_1 = var_0.b.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 20u)] - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(u_input.c), 20u)] * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(3273u, 20u)])))));
    global1 = array<f32, 20>();
    var_2 = _wgslsmith_f_op_f32(max(arg_0.x, -667f));
    return (countOneBits(~var_0.c) < u_input.c) == true;
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec4<bool> {
    let var_0 = func_2(func_2(Struct_1(true, select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, false, false)), 1u, u_input.b.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, 23012u), 20u)] == _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(16122u, 20u)], -1596f))), -vec4<i32>(_wgslsmith_add_i32(0i, u_input.b.x), ~(-2575i), ~1i, _wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.b.yx))), ~(-vec4<i32>(abs(717i), 2147483647i, arg_0, _wgslsmith_mult_i32(0i, arg_0))));
    let var_1 = Struct_2(vec3<u32>(101988u, _wgslsmith_mult_u32(~var_0.c, ~15272u) & var_0.c, func_2(Struct_1(true, select(var_0.b, vec4<bool>(true, false, false, true), var_0.b), u_input.c, -20302i, var_0.b.x), ~_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, -2147483647i, u_input.d, arg_0), vec4<i32>(21143i, arg_0, arg_0, -15911i))).c));
    let var_2 = ~(-1200i);
    let var_3 = Struct_1(!all(var_0.b), vec4<bool>(!var_0.e, true, var_0.a, func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(arg_1.x, 20u)], global1[_wgslsmith_index_u32(1u, 20u)]) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(68137u, 20u)], global1[_wgslsmith_index_u32(var_0.c, 20u)])))), !select(var_0.b, vec4<bool>(false, var_0.e, false, var_0.b.x), vec4<bool>(var_0.a, var_0.a, true, var_0.b.x)))), 31758u, -_wgslsmith_add_i32(-6224i, arg_0) >> (var_0.c % 32u), true);
    let var_4 = func_2(func_2(func_2(func_2(func_2(var_0, vec4<i32>(arg_0, var_3.d, -2147483647i, -37021i)), -vec4<i32>(var_3.d, 1i, -1i, arg_0)), abs(-vec4<i32>(-1i, 36203i, -2147483647i, u_input.d))), vec4<i32>(arg_0, 0i, u_input.b.x, var_3.d)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, abs(u_input.a), _wgslsmith_div_i32(-1i, arg_0), _wgslsmith_mod_i32(var_2, var_3.d)), countOneBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(var_2, 9018i, 2147483647i, var_3.d), vec4<i32>(26002i, 26707i, u_input.d, -7319i))), min(~vec4<i32>(arg_0, 0i, -23627i, var_2), vec4<i32>(arg_0, u_input.d, -31974i, -2147483647i)) ^ abs(vec4<i32>(943i, 0i, var_3.d, arg_0))));
    return func_2(var_3, ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, var_4.d, 0i), vec4<i32>(var_0.d, arg_0, 0i, -3206i), vec4<i32>(var_4.d, u_input.d, var_0.d, 55659i)) | _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.d, var_4.d, var_2, 0i), ~vec4<i32>(11519i, var_2, 2147483647i, 2147483647i)))).b;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>) -> bool {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), -3059f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(204f - arg_1), _wgslsmith_f_op_f32(abs(arg_1)))))), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, min(_wgslsmith_mult_u32(0u, arg_2.x), arg_2.x >> (47900u % 32u))), 20u)]);
    let var_0 = Struct_1(!(!arg_0.e), !func_3(_wgslsmith_mult_i32(arg_0.d << (0u % 32u), ~(-1i)), countOneBits(vec4<u32>(4294967295u, 1u, 0u, u_input.c)) >> (vec4<u32>(arg_0.c, 4294967295u, 49600u, arg_2.x) % vec4<u32>(32u))), ~(~_wgslsmith_add_u32(~arg_0.c, select(0u, u_input.c, arg_0.e))), i32(-1i) * -min(~arg_0.d, 12495i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))) < 1f);
    global1 = array<f32, 20>();
    let var_1 = arg_0;
    let var_2 = _wgslsmith_dot_vec4_i32(-(~_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -41639i, var_0.d, arg_0.d), vec4<i32>(36417i, u_input.d, arg_0.d, u_input.a)), abs(vec4<i32>(-1i, var_1.d, var_1.d, u_input.b.x)))), -((vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, var_0.d, var_1.d, var_0.d)) << ((vec4<u32>(var_1.c, 29921u, 1u, 27868u) << (reverseBits(vec4<u32>(arg_0.c, 4294967295u, var_0.c, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -898f;
    let var_0 = func_4(Struct_1(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)]) * vec2<f32>(-701f, global1[_wgslsmith_index_u32(3099u, 20u)]))), vec4<bool>(true, true, true, true)), !(!func_3(21786i, vec4<u32>(1u, u_input.c, u_input.c, 4294967295u))), 66833u, -u_input.d, select(true, true, true) | true), _wgslsmith_div_f32(-489f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 1u, 67842u) & reverseBits(vec3<u32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(11859u, 4294967295u, 0u), vec3<u32>(0u, u_input.c, 1u), vec3<bool>(true, true, false)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 10363u, 26645u), vec3<u32>(u_input.c, u_input.c, 4294967295u)))), 20u)]), ~vec2<u32>(~u_input.c, ~(~65816u)));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~_wgslsmith_add_u32(24915u, 11581u)), ~(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1504u, u_input.c, 32814u, 92625u)), countOneBits(vec4<u32>(1u, u_input.c, u_input.c, u_input.c))))), 20u)];
    global3 = ~(reverseBits(_wgslsmith_add_i32(1i, -26546i) & _wgslsmith_add_i32(u_input.b.x, -2147483647i)) << (u_input.c % 32u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 20u)]), _wgslsmith_f_op_f32(-2534f + 1351f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.c, 20u)])) - _wgslsmith_f_op_f32(sign(-965f))), !(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 20u)] >= global1[_wgslsmith_index_u32(u_input.c, 20u)], select(var_0, true, var_0))), firstTrailingBit(~u_input.c & _wgslsmith_mod_u32(~4294967295u, 4294967295u)), 59598i, var_0);
    global3 = var_1.d;
    var var_2 = reverseBits(~(min(~vec4<u32>(19739u, u_input.c, 4294967295u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(36658u, u_input.c, 21236u, u_input.c), vec4<u32>(var_1.c, 21360u, 46971u, 1u))) ^ vec4<u32>(u_input.c >> (4294967295u % 32u), 1u, 4294967295u, _wgslsmith_mult_u32(var_1.c, 16759u))));
    let var_3 = Struct_2(firstTrailingBit(~vec3<u32>(u_input.c, var_1.c & 0u, abs(1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(~var_3.a.xx, ~var_2.yy, select(var_2.zz, abs(vec2<u32>(var_1.c, 1u)), !(!vec2<bool>(var_0, false)))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_1.c, 20u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(33275u, 20u)], 228f), global1[_wgslsmith_index_u32(~0u, 20u)])), _wgslsmith_f_op_f32(511f - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.x, 20u)]))))), var_2.yw, ~4294967295u);
}

