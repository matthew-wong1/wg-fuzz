struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(28089u, 4294967295u), vec2<u32>(0u, 10481u), vec2<u32>(12077u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(78864u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(1u, 36920u), vec2<u32>(48099u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 8253u), vec2<u32>(0u, 1u), vec2<u32>(104050u, 713u), vec2<u32>(4294967295u, 21986u), vec2<u32>(34159u, 4294967295u), vec2<u32>(39522u, 10538u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 55682u));

var<private> global2: Struct_1 = Struct_1(4294967295u);

var<private> global3: vec4<u32> = vec4<u32>(69507u, 10763u, 41362u, 21924u);

var<private> global4: f32 = -1193f;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(3546u, ~global2.a);
    global0 = array<Struct_1, 12>();
    global1 = array<vec2<u32>, 18>();
    global2 = global0[_wgslsmith_index_u32(~31576u, 12u)];
    let var_1 = _wgslsmith_div_i32(firstLeadingBit(1i), arg_0.x);
    return global0[_wgslsmith_index_u32(~(~19970u), 12u)];
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: f32) -> bool {
    global0 = array<Struct_1, 12>();
    var var_0 = arg_2;
    global2 = global0[_wgslsmith_index_u32(4294967295u, 12u)];
    global1 = array<vec2<u32>, 18>();
    let var_1 = func_2(-_wgslsmith_clamp_vec3_i32((vec3<i32>(-2147483647i, u_input.b, u_input.a) << (global3.wzw % vec3<u32>(32u))) >> (vec3<u32>(global3.x, arg_0, global2.a) % vec3<u32>(32u)), ~firstTrailingBit(vec3<i32>(u_input.b, 1i, 2147483647i)), vec3<i32>(43983i, 1i, 23135i) & min(vec3<i32>(u_input.b, 2147483647i, -11747i), vec3<i32>(u_input.a, 28491i, u_input.a))), 48648u);
    return true;
}

fn func_3(arg_0: u32) -> vec2<bool> {
    global2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(firstLeadingBit(~vec2<u32>(4294967295u, 1u)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global3.x, 51434u), vec2<u32>(0u, 58433u)), min(vec2<u32>(50215u, arg_0), global3.wy)), vec2<u32>(global3.x, ~1u)), _wgslsmith_div_vec2_u32(select(countOneBits(global3.ww), ~global1[_wgslsmith_index_u32(global3.x, 18u)], true), select(firstLeadingBit(vec2<u32>(arg_0, global3.x)), reverseBits(global1[_wgslsmith_index_u32(1u, 18u)]), true))), 12u)];
    var var_0 = Struct_1(arg_0);
    var var_1 = Struct_1(1u << (1u % 32u));
    var var_2 = -1480f;
    var var_3 = firstLeadingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.a, u_input.b), max(max(vec2<i32>(-2147483647i, -4682i), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(u_input.a, 5563i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 69314i), vec2<i32>(0i, u_input.a)) & countOneBits(vec2<i32>(u_input.a, u_input.a))), firstTrailingBit(vec2<i32>(i32(-1i) * -2147483647i, -2147483647i))));
    return select(!select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false), vec2<bool>(true, true)), u_input.b <= _wgslsmith_mult_i32(13639i, 52702i)), select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, any(vec3<bool>(false, false, true))), !all(vec3<bool>(false, false, true))), vec2<bool>(false, any(vec4<bool>(true, true, true, true))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), select(vec2<bool>(false, true), vec2<bool>(func_1(~109766u, vec4<f32>(-347f, 797f, -784f, -1317f), -813f), true), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), vec2<bool>(func_1(~41667u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-556f, 875f, -670f, -784f)), _wgslsmith_f_op_f32(1044f * -209f)), any(vec2<bool>(true, true))), !func_3(~global3.x));
    global0 = array<Struct_1, 12>();
    var var_1 = Struct_1(global2.a);
    var var_2 = 0u;
    var_1 = Struct_1(reverseBits(_wgslsmith_sub_u32(~4294967295u, 0u) & _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.a, 4294967295u, 29735u, 53495u), _wgslsmith_div_vec4_u32(vec4<u32>(36146u, var_1.a, 6002u, var_1.a), vec4<u32>(29554u, 36838u, global2.a, 0u)))));
    var var_3 = func_2(vec3<i32>(abs(firstLeadingBit(firstTrailingBit(2147483647i))), i32(-1i) * -38312i, -u_input.a), reverseBits(46248u));
    var_2 = _wgslsmith_div_u32(1u, global3.x);
    let var_4 = Struct_1(abs(_wgslsmith_mult_u32(_wgslsmith_mult_u32(global3.x, global3.x) | firstTrailingBit(56918u), ~var_3.a)));
    var var_5 = func_2(vec3<i32>(u_input.a ^ u_input.b, _wgslsmith_mult_i32(1i, countOneBits(2147483647i)), u_input.a), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_add_u32(4294967295u, select(abs(46192u), 14668u, any(vec4<bool>(var_0.x, var_0.x, false, var_0.x))) | 37477u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-695f - 1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1245f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1247f), _wgslsmith_f_op_f32(f32(-1f) * -408f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-176f * _wgslsmith_f_op_f32(f32(-1f) * -519f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -346f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f)))));
}

