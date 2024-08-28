struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(417f, 1885f);

var<private> global1: vec4<bool>;

var<private> global2: array<f32, 23>;

var<private> global3: array<Struct_1, 16>;

var<private> global4: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    global4 = abs(select(arg_3.x, arg_3.x, global1.x) >> (_wgslsmith_add_u32(arg_3.x, _wgslsmith_dot_vec3_u32(arg_3, vec3<u32>(1u, 1u, 0u))) % 32u));
    let var_0 = ~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.c, u_input.b, 0i, -1i), vec4<i32>(0i, u_input.c, 0i, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -2147483647i, u_input.b, 0i), vec4<i32>(21148i, 1i, 1i, 38902i))) ^ -(~vec4<i32>(-16409i, -18295i, u_input.a, u_input.a)), vec4<i32>(~(-1667i), _wgslsmith_div_i32(u_input.a, -1i) >> (arg_3.x % 32u), -1907i, -9850i));
    let var_1 = global0.b;
    global3 = array<Struct_1, 16>();
    var var_2 = Struct_1(275f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(~4294967295u, 23u)])))) + _wgslsmith_f_op_f32(-356f + 244f)));
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_div_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, 17301u, 22718u), ~561u, ~25703u), reverseBits(~vec3<u32>(0u, 0u, 92607u)))), _wgslsmith_sub_u32(select(1u, ~(~4294967295u), false), 4294967295u));
    global1 = !vec4<bool>(all(!(!global1.wyx)), any(select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), !global1.yy)), all(select(select(global1.wwy, vec3<bool>(global1.x, true, global1.x), global1.zwz), !global1.xwz, global1.zxx)), any(vec3<bool>(global1.x, true, var_0 != 70480u)));
    let var_1 = vec3<i32>(-1i) * -vec3<i32>(max(~2147483647i, -14220i | u_input.a), _wgslsmith_div_i32(_wgslsmith_add_i32(15492i, -1i), u_input.a), -u_input.b);
    var var_2 = vec4<bool>(all(!(!vec4<bool>(global1.x, false, arg_2, true))), any(select(select(vec4<bool>(false, global1.x, false, true), vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(false, true, true, global1.x)), !vec4<bool>(global1.x, false, global1.x, arg_2), select(global1.x, false, true))) && false, true, !all(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(arg_2, global1.x, global1.x), false)));
    var var_3 = !(!(all(select(vec3<bool>(false, false, global1.x), vec3<bool>(true, false, global1.x), false)) || true));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(~countOneBits(var_0 >> (32860u % 32u)), 23u)])), _wgslsmith_f_op_f32(f32(-1f) * -148f), select(!(-u_input.a != _wgslsmith_clamp_i32(var_1.x, 0i, 2147483647i)), _wgslsmith_f_op_f32(sign(-1636f)) != arg_1.a, true)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global0.a, _wgslsmith_f_op_f32(round(arg_0.b))), func_2(1u, Struct_1(global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(53564u, 23u)]), global3[_wgslsmith_index_u32(0u, 16u)], max(vec3<u32>(52695u, 0u, 70724u), vec3<u32>(4294967295u, 20108u, 88565u))), any(vec2<bool>(true, true)))) - _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(sign(global0.b)))));
    global1 = vec4<bool>(global1.x, select(select(true, 1276f > global0.b, global1.x), any(vec2<bool>(all(vec4<bool>(false, global1.x, global1.x, global1.x)), global1.x)), 55264i >= u_input.c), global1.x, false);
    global4 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 31104u, 9685u), vec4<u32>(35999u, 81518u, 0u, 7253u), vec4<u32>(52588u, 29153u, 77816u, 32447u)), select(vec4<u32>(1u, 26834u, 9778u, 4294967295u), vec4<u32>(1u, 1u, 76151u, 16570u), true), !vec4<bool>(global1.x, global1.x, global1.x, global1.x)), ~abs(vec4<u32>(40412u, 15975u, 29744u, 4294967295u))), ~vec4<u32>(1u, 1u, 1u, 1u)), 1u);
    global0 = func_2(firstTrailingBit(firstTrailingBit(18281u)), arg_0, global3[_wgslsmith_index_u32(0u, 16u)], vec3<u32>(abs(_wgslsmith_div_u32(158720u, abs(1u))), _wgslsmith_mod_u32(84416u, 1u), 4294967295u));
    global3 = array<Struct_1, 16>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(func_1(Struct_1(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(1u, 23u)])), _wgslsmith_f_op_f32(-1630f - -1714f)), -2147483647i), firstTrailingBit(0u)), ~(~abs(_wgslsmith_mult_u32(41402u, 0u)))), 16u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(1u, 16u)], global3[_wgslsmith_index_u32(79437u, 16u)], global1.x))))));
    var var_2 = func_2(945u, func_2(_wgslsmith_mod_u32(~_wgslsmith_add_u32(25497u, 0u), 14997u), Struct_1(var_0.b, -1533f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-729f, global0.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_1, 1758f, global1.x))))), min(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-647f - var_1) * -477f)), 155f), vec3<u32>(1u, 1u, 1u));
    var var_3 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(1i, u_input.c, u_input.b, 2147483647i)), ~vec4<i32>(u_input.a, 0i, u_input.c, u_input.c), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -2530i, 0i, 18944i), vec4<i32>(u_input.a, u_input.a, u_input.c, 1i)), firstTrailingBit(vec4<i32>(2147483647i, 2147483647i, u_input.b, u_input.c)))) & vec4<i32>(1i, reverseBits(1i), _wgslsmith_add_i32(u_input.a, 2147483647i) & 1i, 1i), vec4<i32>(0i, -33403i, _wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, 2147483647i), 1i), _wgslsmith_div_i32(u_input.a, (i32(-1i) * -24551i) | u_input.c)));
    global3 = array<Struct_1, 16>();
    let var_4 = global3[_wgslsmith_index_u32(select(0u << (0u % 32u), 0u, any(!global1.yy)), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 1u), ~1u);
}

