struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
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

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(true, vec3<bool>(false, true, false), 4294967295u, vec4<bool>(true, true, true, true)), Struct_1(false, vec3<bool>(false, false, false), 23754u, vec4<bool>(false, false, false, false)), Struct_1(false, vec3<bool>(true, false, false), 1u, vec4<bool>(false, false, true, true)), Struct_1(true, vec3<bool>(true, false, false), 26840u, vec4<bool>(false, false, false, true)), Struct_1(true, vec3<bool>(true, false, false), 1u, vec4<bool>(false, true, false, false)), Struct_1(true, vec3<bool>(false, true, false), 1u, vec4<bool>(true, true, false, true)), Struct_1(false, vec3<bool>(true, true, false), 0u, vec4<bool>(false, false, false, false)), Struct_1(false, vec3<bool>(true, false, false), 66522u, vec4<bool>(false, false, false, true)), Struct_1(false, vec3<bool>(false, false, true), 0u, vec4<bool>(true, false, false, true)), Struct_1(true, vec3<bool>(true, true, true), 4294967295u, vec4<bool>(false, true, false, true)), Struct_1(false, vec3<bool>(false, false, true), 4294967295u, vec4<bool>(false, false, false, false)), Struct_1(false, vec3<bool>(true, false, false), 7591u, vec4<bool>(true, true, true, true)), Struct_1(false, vec3<bool>(false, true, true), 4502u, vec4<bool>(true, true, true, true)), Struct_1(false, vec3<bool>(true, true, true), 0u, vec4<bool>(true, true, true, false)), Struct_1(false, vec3<bool>(false, false, false), 37558u, vec4<bool>(true, false, false, true)), Struct_1(true, vec3<bool>(true, true, false), 0u, vec4<bool>(false, false, true, false)), Struct_1(true, vec3<bool>(false, true, false), 4294967295u, vec4<bool>(false, false, true, true)), Struct_1(true, vec3<bool>(false, false, false), 0u, vec4<bool>(false, true, false, false)), Struct_1(true, vec3<bool>(false, true, true), 53488u, vec4<bool>(false, false, false, true)), Struct_1(true, vec3<bool>(false, true, false), 4294967295u, vec4<bool>(true, false, true, true)), Struct_1(true, vec3<bool>(true, true, true), 4294967295u, vec4<bool>(false, true, false, false)), Struct_1(false, vec3<bool>(true, false, false), 0u, vec4<bool>(true, true, false, false)), Struct_1(false, vec3<bool>(true, true, false), 45525u, vec4<bool>(false, true, true, true)), Struct_1(false, vec3<bool>(true, true, true), 27988u, vec4<bool>(false, false, false, true)), Struct_1(true, vec3<bool>(false, true, true), 23004u, vec4<bool>(false, false, false, true)), Struct_1(false, vec3<bool>(true, false, true), 4294967295u, vec4<bool>(true, false, false, false)), Struct_1(false, vec3<bool>(true, false, true), 4294967295u, vec4<bool>(true, false, false, false)), Struct_1(false, vec3<bool>(false, false, true), 37626u, vec4<bool>(false, false, true, false)), Struct_1(false, vec3<bool>(false, false, false), 207u, vec4<bool>(true, true, true, false)), Struct_1(true, vec3<bool>(false, true, false), 4294967295u, vec4<bool>(false, true, true, true)), Struct_1(true, vec3<bool>(false, false, false), 16101u, vec4<bool>(false, true, false, false)));

var<private> global1: array<u32, 2> = array<u32, 2>(1u, 87050u);

var<private> global2: f32 = 524f;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> vec3<i32> {
    global1 = array<u32, 2>();
    global1 = array<u32, 2>();
    let var_0 = Struct_1(true, vec3<bool>(false, false, true), ~firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(arg_2.c, 15922u) & vec2<u32>(0u, global1[_wgslsmith_index_u32(26597u, 2u)]))), !(!arg_2.d));
    let var_1 = arg_2;
    let var_2 = var_1.c;
    return _wgslsmith_sub_vec3_i32(select(firstTrailingBit(vec3<i32>(u_input.c, u_input.a, -32074i)), vec3<i32>(_wgslsmith_mult_i32(-u_input.c, -u_input.c), ~_wgslsmith_sub_i32(u_input.d, u_input.b), firstLeadingBit(u_input.d) ^ _wgslsmith_mult_i32(u_input.d, 1i)), !(!select(arg_2.b, vec3<bool>(var_0.d.x, var_1.b.x, arg_0), vec3<bool>(var_0.a, true, false)))), vec3<i32>(60544i, _wgslsmith_sub_i32(u_input.b, reverseBits(-12795i)), -(~(u_input.b >> (arg_1.x % 32u)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~(~(~0u))), _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(72974u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1123u, 2u)], 2u)]), 2u)], 4294967295u, global1[_wgslsmith_index_u32(22934u, 2u)]) << (vec3<u32>(reverseBits(global1[_wgslsmith_index_u32(1u, 2u)]), global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4576u, 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)]), 2u)]) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)], 2u)], global1[_wgslsmith_index_u32(58373u, 2u)]), abs(0u)), ~1u, firstLeadingBit(max(11826u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)])))), 48404u), 2u)], 2u)];
    var var_1 = global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~global1[_wgslsmith_index_u32(1u, 2u)], ~global1[_wgslsmith_index_u32(0u, 2u)]), countOneBits(reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 2u)], 0u)))), 2u)], 2u)], 2u)], 2u)] ^ ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4645u, 2u)], 2u)], 31u)];
    var var_2 = -countOneBits(vec4<i32>(~u_input.a & 2147483647i, countOneBits(u_input.b >> (35556u % 32u)), 2147483647i, -arg_0.x));
    var var_3 = 0u;
    var var_4 = Struct_1(false, var_1.b, ~40612u, !vec4<bool>(var_1.a, select(var_1.c, var_1.c, false) <= 42416u, true, false));
    return true;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: f32) -> vec3<i32> {
    var var_0 = vec4<i32>(u_input.c, 0i, u_input.a, u_input.a);
    global0 = array<Struct_1, 31>();
    global2 = arg_3;
    var_0 = _wgslsmith_sub_vec4_i32(select(vec4<i32>(~1i, ~u_input.d ^ abs(var_0.x), u_input.d, var_0.x), vec4<i32>(_wgslsmith_mult_i32(u_input.a | -1i, u_input.d ^ u_input.b), -abs(var_0.x), _wgslsmith_mult_i32(u_input.c ^ 13899i, ~(-22908i)), (-2147483647i >> (arg_1.x % 32u)) ^ 1i), select(vec4<bool>(all(vec2<bool>(arg_0, arg_0)), true, true, all(vec3<bool>(true, arg_0, false))), vec4<bool>(arg_0, func_3(vec3<i32>(0i, var_0.x, 1i), vec4<f32>(-962f, 494f, arg_3, -1007f)), true, false), !(var_0.x > -1i))), -_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(var_0.x, 0i), i32(-1i) * -48855i, u_input.c, 18568i), ~(vec4<i32>(1i, 0i, var_0.x, 1i) & vec4<i32>(var_0.x, 33232i, 2147483647i, 2147483647i))));
    var var_1 = global0[_wgslsmith_index_u32(1u, 31u)];
    return vec3<i32>(abs(1i), -12198i, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~firstTrailingBit(global1[_wgslsmith_index_u32(6047u, 2u)]), 2u)] << (global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4953u, ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)])), 2u)] % 32u), 2u)], 2u)]);
    global1 = array<u32, 2>();
    global1 = array<u32, 2>();
    var var_1 = vec4<u32>(1u, ~1025u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~(~28099u)), 2u)], 2u)], 17432u);
    let var_2 = _wgslsmith_mod_vec3_i32(~(vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(-2147483647i, u_input.c, 20908i))), min(func_1(true, var_1.xx, global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(14879u, global1[_wgslsmith_index_u32(var_1.x, 2u)]), 31u)]), max(-vec3<i32>(u_input.b, 1i, 0i), abs(vec3<i32>(u_input.b, -1i, u_input.b))) & _wgslsmith_clamp_vec3_i32(func_2(true, var_1.zy, vec4<u32>(var_1.x, 0u, var_1.x, 4294967295u), 979f), vec3<i32>(15179i, -1i, -46837i), -vec3<i32>(28956i, -47489i, 1i))));
    global0 = array<Struct_1, 31>();
    var_0 = ~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, ~_wgslsmith_dot_vec2_u32(~var_1.zx, ~var_1.yz)), 2u)];
    global2 = _wgslsmith_f_op_f32(890f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -787f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-117f)), _wgslsmith_f_op_f32(269f * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -301f))))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-1i, _wgslsmith_mod_i32(-22794i, 8113i)), -var_2.x), _wgslsmith_add_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(1i, -1i)), vec2<i32>(func_1(false, vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 2u)], 2u)], 2u)]), Struct_1(false, vec3<bool>(true, false, true), 0u, vec4<bool>(false, false, true, false))).x, -16601i))));
}

