struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<u32, 11>;

var<private> global2: array<i32, 26>;

var<private> global3: array<vec4<bool>, 24>;

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: bool) -> bool {
    global1 = array<u32, 11>();
    var var_0 = !((_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(12399u, 26u)] >> (u_input.a % 32u), firstLeadingBit(-2147483647i)) << (u_input.a % 32u)) == 9936i);
    var var_1 = _wgslsmith_sub_vec3_u32((_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 55059u, 53600u), vec3<u32>(global1[_wgslsmith_index_u32(1u, 11u)], 60891u, global1[_wgslsmith_index_u32(10283u, 11u)]), vec3<u32>(u_input.a, 1u, 40552u)) ^ vec3<u32>(firstTrailingBit(u_input.a), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36005u, 11u)], 11u)], _wgslsmith_mod_u32(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 11u)], 11u)], 11u)]))) & ~vec3<u32>(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 4294967295u, u_input.b), global1[_wgslsmith_index_u32(~1u, 11u)], 1u), min(_wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(16823u, 11u)], u_input.a, u_input.b), vec3<u32>(1u, 17476u, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(31839u, global1[_wgslsmith_index_u32(4294967295u, 11u)], u_input.b), ~vec3<u32>(0u, 0u, 0u))) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, 24820u, 51495u), ~(vec3<u32>(465u, global1[_wgslsmith_index_u32(1u, 11u)], 0u) ^ vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 11u)], 11u)], 4294967295u, 15796u)), ~firstLeadingBit(vec3<u32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 11u)]))) % vec3<u32>(32u)));
    global1 = array<u32, 11>();
    let var_2 = global2[_wgslsmith_index_u32(47041u, 26u)];
    return true;
}

fn func_3(arg_0: Struct_1) -> u32 {
    global3 = array<vec4<bool>, 24>();
    var var_0 = arg_0;
    let var_1 = !(!select(!select(vec3<bool>(global4.b.x, false, false), vec3<bool>(var_0.b.x, true, arg_0.b.x), true), vec3<bool>(!global4.b.x, func_1(global4.b.x), arg_0.b.x), select(!vec3<bool>(false, true, global4.b.x), !vec3<bool>(global4.b.x, var_0.b.x, false), select(vec3<bool>(false, global4.b.x, true), vec3<bool>(false, true, var_0.b.x), vec3<bool>(global4.b.x, false, var_0.b.x)))));
    var var_2 = arg_0;
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 1u), 11u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 11u)], 0u, 54277u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), u_input.a), 11u)]), ~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(firstLeadingBit(u_input.b), countOneBits(global1[_wgslsmith_index_u32(16296u, 11u)]), true), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], 41167u, u_input.a, u_input.a)), vec4<u32>(u_input.b, 34678u, 43972u, u_input.b)), _wgslsmith_add_u32(1u, ~31550u)), 11u)]), 11u)];
    return ~min(reverseBits(~u_input.a) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u) << (vec3<u32>(40584u, 4294967295u, u_input.a) % vec3<u32>(32u))), abs(min(_wgslsmith_sub_u32(u_input.a, 0u), u_input.b << (7720u % 32u))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> vec4<bool> {
    global1 = array<u32, 11>();
    let var_0 = arg_0;
    global4 = Struct_1(var_0.a, select(vec2<bool>(all(!vec2<bool>(true, arg_1.x)), all(select(vec3<bool>(global4.b.x, var_0.b.x, true), vec3<bool>(arg_1.x, global4.b.x, global4.b.x), arg_0.b.x))), !arg_1, (firstTrailingBit(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)], 26u)]) | -4873i) < 2147483647i));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u) & vec3<u32>(u_input.b | 37487u, global1[_wgslsmith_index_u32(5180u, 11u)], func_3(arg_0)), ~(vec3<u32>(4294967295u, 52986u, 63358u) ^ vec3<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27446u, 11u)], 11u)])) | _wgslsmith_add_vec3_u32(vec3<u32>(16456u, global1[_wgslsmith_index_u32(21688u, 11u)], 1u), vec3<u32>(global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)], u_input.a) >> (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 11u)], 11u)], 56055u, 56956u) % vec3<u32>(32u)))), 26u)];
    global2 = array<i32, 26>();
    return !(!global3[_wgslsmith_index_u32(countOneBits(~(~global1[_wgslsmith_index_u32(1u, 11u)])), 24u)]);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec3<bool>) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(36144u, 26u)];
    let var_1 = global0[_wgslsmith_index_u32(~reverseBits(_wgslsmith_div_u32(u_input.a, firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10123u, 11u)], 11u)]) & (u_input.a ^ 18463u))), 26u)];
    let var_2 = abs(firstTrailingBit(vec3<u32>(0u, ~global1[_wgslsmith_index_u32(u_input.a, 11u)], 0u))) & vec3<u32>(~u_input.a, abs(u_input.b), firstTrailingBit(~(global1[_wgslsmith_index_u32(u_input.b, 11u)] << (36300u % 32u))));
    global3 = array<vec4<bool>, 24>();
    let var_3 = ~arg_0.xxw;
    return global4.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 26>();
    var var_0 = func_1(!(true & any(!global3[_wgslsmith_index_u32(32271u, 24u)])));
    global4 = Struct_1(_wgslsmith_f_op_f32(global4.a * _wgslsmith_f_op_f32(global4.a + _wgslsmith_f_op_f32(func_4(-vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(155466u, 26u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61178u, 11u)], 11u)], 26u)]), func_2(global0[_wgslsmith_index_u32(86103u, 26u)], vec2<bool>(global4.b.x, false)), !vec3<bool>(true, true, global4.b.x))))), select(vec2<bool>(false, !all(vec3<bool>(global4.b.x, global4.b.x, true))), !select(global4.b, global4.b, global4.b), !select(vec2<bool>(true, global4.b.x), global4.b, 0u < u_input.b)));
    let var_1 = ~u_input.a;
    global3 = array<vec4<bool>, 24>();
    let var_2 = 14968i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(77245u, u_input.a, global1[_wgslsmith_index_u32(u_input.b, 11u)]), select(abs(vec3<u32>(u_input.b, 0u, var_1)), _wgslsmith_add_vec3_u32(vec3<u32>(26079u, u_input.b, var_1), vec3<u32>(11830u, 4294967295u, var_1)), vec3<bool>(global4.b.x, global4.b.x, false))), 11u)], ~firstLeadingBit(~var_1)), -890f, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(var_2, global2[_wgslsmith_index_u32(var_1, 26u)]), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(var_1, 11u)], u_input.b), 11u)], 26u)], 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -2147483647i, var_2), vec3<i32>(var_2, var_2, -14818i)) & select(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 11u)], 26u)], global2[_wgslsmith_index_u32(74776u, 26u)]), vec3<i32>(global2[_wgslsmith_index_u32(49056u, 26u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1, 11u)], 26u)], var_2), vec3<bool>(false, true, global4.b.x)))));
}

