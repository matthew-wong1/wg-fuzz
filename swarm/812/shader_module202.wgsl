struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec2<u32>;

var<private> global2: array<u32, 5>;

var<private> global3: array<f32, 30>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    global1 = vec2<u32>(~arg_3.b, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(arg_2.b, 0u, 4294967295u, arg_0), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 1u, arg_3.b, 13753u), _wgslsmith_add_vec4_u32(vec4<u32>(29549u, global2[_wgslsmith_index_u32(arg_0, 5u)], 1u, 47103u), vec4<u32>(10044u, 0u, global1.x, arg_2.b))), true), _wgslsmith_add_vec4_u32(~(~vec4<u32>(arg_2.b, global2[_wgslsmith_index_u32(arg_0, 5u)], 0u, 29193u)), vec4<u32>(~arg_0, 1u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(19335u, 5u)], arg_2.b, arg_3.b, 12077u), vec4<u32>(arg_0, 41541u, 0u, 25620u)), 5u)], ~20127u))));
    let var_0 = arg_3;
    global0 = min(0u, 66570u) ^ arg_3.b;
    return vec4<i32>(arg_1.d.x, -1i, _wgslsmith_mod_i32(min(-max(35328i, var_0.c.x), _wgslsmith_mod_i32(1i, max(arg_3.d.x, -2147483647i))), -arg_1.c.x), arg_3.d.x << (_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(global1.x, 4294967295u), arg_0), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(64811u, arg_0, 45391u, 0u), vec4<u32>(global2[_wgslsmith_index_u32(1u, 5u)], 19085u, arg_3.b, 4885u)), 114556u)) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> vec4<u32> {
    global1 = _wgslsmith_mod_vec2_u32(~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_3.b, 52997u) & vec2<u32>(global1.x, 1u), abs(vec2<u32>(arg_3.b, arg_0.b))), max(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48570u, 5u)], 5u)], global1.x), ~vec2<u32>(0u, 15996u)), ~vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], arg_0.b)), ~select(~vec2<u32>(arg_3.b, global1.x) & (vec2<u32>(4294967295u, 28607u) >> (vec2<u32>(global1.x, 4294967295u) % vec2<u32>(32u))), vec2<u32>(global2[_wgslsmith_index_u32(arg_3.b, 5u)], 76611u), !(!vec2<bool>(true, arg_2))));
    let var_0 = arg_0;
    global0 = ~abs(abs(51210u) << (firstLeadingBit(~var_0.b) % 32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-arg_0.a);
    global1 = ~vec2<u32>(arg_0.b, global1.x);
    return firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u >> (reverseBits(global2[_wgslsmith_index_u32(0u, 5u)]) % 32u), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.b, arg_0.b, global1.x), 5u)], ~var_0.b << (33835u % 32u), 4294967295u), vec4<u32>(1u, var_0.b, ~_wgslsmith_mod_u32(0u, 65704u), arg_3.b)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = arg_2;
    let var_1 = var_0;
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(1u), 0u, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(25739u, 195u), global1.x), 0u), _wgslsmith_add_vec4_u32(func_4(Struct_1(var_0.a, 18248u, var_0.d, arg_2.d), func_3(16872u, Struct_1(arg_2.a, var_1.b, var_0.c, var_1.d), var_1, Struct_1(vec4<f32>(860f, -592f, -425f, arg_0), 4294967295u, arg_2.c, vec3<i32>(-2147483647i, -2147483647i, var_1.c.x))), true, Struct_1(vec4<f32>(1266f, -806f, -1000f, arg_2.a.x), arg_2.b, var_0.c, var_0.c)) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(31496u, 4294967295u, var_0.b, 49479u), vec4<u32>(var_0.b, var_0.b, global1.x, var_1.b)) ^ abs(vec4<u32>(1403u, 60043u, 4294967295u, 1109u))) % vec4<u32>(32u)), ~min(vec4<u32>(arg_2.b, global1.x, global1.x, global1.x) ^ vec4<u32>(1u, 1u, global2[_wgslsmith_index_u32(7212u, 5u)], 20752u), select(vec4<u32>(0u, 9011u, 34140u, global2[_wgslsmith_index_u32(global1.x, 5u)]), vec4<u32>(42624u, 4294967295u, global1.x, var_0.b), vec4<bool>(false, true, false, true)))));
    global3 = array<f32, 30>();
    global1 = _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_2.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(1u, 14065u))), vec2<u32>(var_0.b, _wgslsmith_add_u32(var_2.x, var_1.b)));
    return vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -607f)), -1000f, all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true))))), _wgslsmith_f_op_f32(f32(-1f) * -1903f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2(arg_2.a.x, ~arg_0.x, Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.a), ~arg_2.b, arg_0.yyz, _wgslsmith_sub_vec3_i32(arg_0.zyx, abs(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, arg_0.x, arg_1), vec3<i32>(arg_2.d.x, arg_2.d.x, arg_1)))))));
    var_0 = arg_2.a.zyx;
    var var_1 = Struct_1(arg_2.a, ~arg_2.b, vec3<i32>(arg_3, countOneBits(-arg_3), i32(-1i) * -(arg_1 >> (1u % 32u))), -vec3<i32>(arg_3, _wgslsmith_mod_i32(arg_0.x, -1i) & 1i, arg_3));
    var var_2 = arg_2;
    let var_3 = arg_2;
    return select(firstLeadingBit(~(~vec2<u32>(0u, 101652u))), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, var_1.b, var_2.b, global2[_wgslsmith_index_u32(var_3.b, 5u)])), vec4<u32>(4294967295u, 4563u, 15837u, var_2.b)), 1u), _wgslsmith_div_vec2_u32(~countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(var_2.b, 5u)], 85859u)), ~vec2<u32>(49076u, 0u))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(~(vec2<u32>(4294967295u, 4294967295u) ^ vec2<u32>(global1.x, 27027u)) >> (min(func_1(vec4<i32>(u_input.a, 0i, -2147483647i, u_input.a), -1i, Struct_1(vec4<f32>(1335f, global3[_wgslsmith_index_u32(global1.x, 30u)], global3[_wgslsmith_index_u32(60760u, 30u)], global3[_wgslsmith_index_u32(48029u, 30u)]), 0u, vec3<i32>(u_input.a, 0i, 0i), vec3<i32>(-11030i, u_input.a, u_input.a)), -1i), vec2<u32>(1u, global1.x)) % vec2<u32>(32u))) >> (firstLeadingBit(~countOneBits(~vec2<u32>(global2[_wgslsmith_index_u32(global1.x, 5u)], global2[_wgslsmith_index_u32(32546u, 5u)]))) % vec2<u32>(32u));
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1074f, -1000f, global3[_wgslsmith_index_u32(global1.x, 30u)], -1318f)) * vec4<f32>(global3[_wgslsmith_index_u32(global1.x, 30u)], 917f, global3[_wgslsmith_index_u32(64424u, 30u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(80092u, 5u)], 30u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(global1.x, 30u)], 542f, global3[_wgslsmith_index_u32(global1.x, 30u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 5u)], 30u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 5u)], 30u)], global3[_wgslsmith_index_u32(0u, 30u)], -1301f, -1165f)), vec4<bool>(true, true, true, true))) + vec4<f32>(_wgslsmith_f_op_f32(abs(1206f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 5u)], 30u)] + 506f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 30u)] + -1000f), _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(4294967295u, 30u)]))))), ~4294967295u, max(select(-vec3<i32>(-27539i, 54698i, u_input.a), -vec3<i32>(1i, 0i, u_input.a) ^ -vec3<i32>(u_input.a, 2147483647i, -32254i), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(0u, 5u)] >= global2[_wgslsmith_index_u32(global1.x, 5u)])), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, 0i) | vec3<i32>(u_input.a, u_input.a, u_input.a), ~vec3<i32>(-32285i, u_input.a, u_input.a))), _wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.a, u_input.a | u_input.a, firstLeadingBit(u_input.a)) | vec3<i32>(-2147483647i, -u_input.a, ~9341i), -vec3<i32>(u_input.a, u_input.a, 39586i)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(abs(vec2<u32>(global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(global1.x, 5u)]))));
}

