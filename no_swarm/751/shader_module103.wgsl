struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(29253u, 56247u, 1u, 0u, 0u, 4294967295u, 25033u, 1u, 0u, 1u, 81281u, 51138u, 4294967295u, 4294967295u);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: vec4<u32> = vec4<u32>(47432u, 76236u, 1u, 37149u);

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> f32 {
    global0 = array<u32, 14>();
    global1 = -1i;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(649f - _wgslsmith_f_op_f32(-817f + -655f)) * 1834f) - _wgslsmith_f_op_f32(floor(743f)))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global2 = vec4<u32>(~72526u, 4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.a, arg_1.b ^ 4294967295u), 14u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(~global0[_wgslsmith_index_u32(1u, 14u)], global2.x, arg_1.a), ~global2.wxw)), 14u)], 50729u);
    global0 = array<u32, 14>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1221f + -364f) - -508f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), global2.x)), -1850f))));
    let var_1 = firstTrailingBit(countOneBits(arg_2.a) >> (74916u % 32u));
    let var_2 = var_0;
    return Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(firstTrailingBit(global0[_wgslsmith_index_u32(arg_1.a, 14u)])), _wgslsmith_add_u32(_wgslsmith_clamp_u32(global2.x, 4294967295u, 0u), 14807u), global2.x), max(~_wgslsmith_mod_vec3_u32(global2.xzy, global2.xww), firstTrailingBit(abs(global2.yyw)))), _wgslsmith_div_u32(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 14u)], 4294967295u), 37013u) ^ 42782u);
}

fn func_1() -> f32 {
    let var_0 = any(!select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), any(vec4<bool>(true, true, true, true))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    global1 = -(~u_input.c.x | u_input.c.x);
    let var_1 = vec4<i32>(u_input.b, _wgslsmith_mult_i32(14310i, abs(u_input.d & u_input.c.x)), u_input.c.x, u_input.b);
    var var_2 = func_2(u_input.c.x, Struct_1(1u, 4294967295u), Struct_1(u_input.a, global2.x));
    var var_3 = func_2(~select(i32(-1i) * -u_input.b, var_1.x, false), func_2(u_input.c.x, Struct_1(~(~u_input.a), _wgslsmith_add_u32(u_input.a, max(54400u, 1u))), func_2(var_1.x, Struct_1(0u << (0u % 32u), ~global0[_wgslsmith_index_u32(1u, 14u)]), func_2(_wgslsmith_add_i32(var_1.x, var_1.x), Struct_1(9339u, 15221u), Struct_1(var_2.a, u_input.a)))), func_2(_wgslsmith_add_i32(countOneBits(-2147483647i), _wgslsmith_mod_i32(u_input.b, u_input.d) & u_input.b), func_2(u_input.b, func_2(38153i, Struct_1(var_2.b, global2.x), func_2(var_1.x, Struct_1(99865u, global0[_wgslsmith_index_u32(56721u, 14u)]), Struct_1(10228u, var_2.a))), Struct_1(4294967295u, 28081u)), Struct_1(_wgslsmith_mult_u32(func_2(u_input.d, Struct_1(22574u, 4294967295u), Struct_1(33599u, 0u)).a, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, global2.x, global2.x), vec3<u32>(1u, 0u, global2.x)), 14u)]), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(12002u, 1u, 4294967295u), global2.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), global0[_wgslsmith_index_u32(4294967295u, 14u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-922f, 965f, var_0)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-961f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    return ~(~_wgslsmith_div_vec2_u32(firstTrailingBit(global2.zz), vec2<u32>(global2.x, arg_2.a)) ^ global2.wy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec3<bool>(!any(vec3<bool>(true, true, true)), all(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), Struct_1(_wgslsmith_div_u32(u_input.a, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(69088u, 14u)] & 94782u, 14u)]), _wgslsmith_sub_u32(1u, global2.x)), Struct_1(func_2(~11177i, Struct_1(_wgslsmith_dot_vec3_u32(global2.yxz, vec3<u32>(103142u, u_input.a, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, u_input.a), global2.wwx)), Struct_1(1u, _wgslsmith_dot_vec3_u32(global2.zxy, global2.wxx))).a, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(30009u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)]) ^ global2.x));
    global3 = ~((0u << (1u % 32u)) >> (~(~(6111u >> (u_input.a % 32u))) % 32u));
    global1 = abs(_wgslsmith_div_i32(_wgslsmith_mod_i32(countOneBits(u_input.b), -51120i), 6129i));
    var var_1 = u_input.c.zy;
    let var_2 = func_2(-var_1.x, Struct_1(select(firstTrailingBit(1u), u_input.a, false), ~global2.x), Struct_1(~1u, 0u));
    var var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c, firstTrailingBit(abs(firstLeadingBit(vec3<i32>(var_1.x, u_input.b, var_1.x))))), u_input.c);
    let var_4 = Struct_1(func_4(vec3<bool>(!all(vec4<bool>(false, true, false, false)), -23886i != ~var_1.x, false), -1000f, Struct_1(23195u, func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-57719i, u_input.d, var_1.x, u_input.d), vec4<i32>(16155i, 0i, var_1.x, var_3.x)), Struct_1(u_input.a, global0[_wgslsmith_index_u32(global2.x, 14u)]), func_2(u_input.d, var_2, Struct_1(0u, var_0.x))).b), var_2).x, ~(~min(_wgslsmith_dot_vec2_u32(global2.xy, var_0), ~1u)));
    var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.yx, vec3<f32>(_wgslsmith_f_op_f32(306f - 1689f), -989f, -1330f), u_input.a, ~min(~(~global2.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(32128u, 0u, 2446u, global0[_wgslsmith_index_u32(4294967295u, 14u)]), ~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 14u)], 55018u, 41912u))));
}

