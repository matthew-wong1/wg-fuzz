struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<u32, 23> = array<u32, 23>(22499u, 2952u, 4294967295u, 1505u, 53582u, 20318u, 29508u, 0u, 4294967295u, 0u, 71488u, 53061u, 1u, 4294967295u, 0u, 49549u, 0u, 3888u, 671u, 4294967295u, 0u, 2137u, 73989u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    global0 = array<f32, 28>();
    var var_0 = select(~abs(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)], 72717u) >> (vec2<u32>(arg_0, 57150u) % vec2<u32>(32u))) >> (~(~vec2<u32>(arg_0, arg_0) ^ vec2<u32>(global1[_wgslsmith_index_u32(arg_0, 23u)], 4294967295u)) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(83527u, ~global1[_wgslsmith_index_u32(~122u, 23u)])), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, true && any(vec2<bool>(false, true))), vec2<bool>(true, true)));
    var var_1 = Struct_1(false, vec3<bool>(true, true, true));
    global1 = array<u32, 23>();
    let var_2 = _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(abs(~0u), arg_0), _wgslsmith_sub_u32(~reverseBits(41654u), 1u)));
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec4<i32>) -> Struct_1 {
    global1 = array<u32, 23>();
    global0 = array<f32, 28>();
    return Struct_1(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 28u)])) * _wgslsmith_f_op_f32(ceil(649f))) <= _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(10236u, 23u)], 1175u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)]), 28u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 28u)])))), vec3<bool>(!arg_1.x, select(func_3(firstTrailingBit(global1[_wgslsmith_index_u32(35152u, 23u)])), arg_1.x, (arg_2.x > -2147483647i) || !arg_1.x), arg_1.x));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global1 = array<u32, 23>();
    let var_0 = arg_1;
    let var_1 = _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(16193u, 23u)], ~51643u);
    global0 = array<f32, 28>();
    var var_2 = _wgslsmith_f_op_f32(684f * _wgslsmith_f_op_f32(-245f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
    return Struct_1(all(!(!(!arg_0.b.zz))), vec3<bool>(func_3(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_1, var_1, 0u)), vec3<u32>(global1[_wgslsmith_index_u32(1u, 23u)], arg_3, 21250u))), !arg_0.a, arg_0.b.x));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    global1 = array<u32, 23>();
    let var_0 = func_4(func_2(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.b.x, -1i, 1i | u_input.d), select(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.c.x), vec4<i32>(-6093i, 0i, 2147483647i, u_input.b.x), arg_0.a)), select(!arg_0.b, select(select(vec3<bool>(false, arg_0.a, false), arg_0.b, false), vec3<bool>(arg_0.b.x, arg_0.a, true), !arg_0.b), !arg_0.a), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-42528i, u_input.d, 23243i, u_input.a.x), ~vec4<i32>(u_input.d, u_input.b.x, -15864i, u_input.a.x)), countOneBits(max(vec4<i32>(-11901i, 0i, 0i, -54023i), vec4<i32>(u_input.b.x, u_input.d, -9535i, 23967i))))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)], 0u), 23u)], _wgslsmith_mult_u32(firstTrailingBit(0u), ~4294967295u)), 23u)], 28u)]), arg_0, ~(0u << (global1[_wgslsmith_index_u32(0u, 23u)] % 32u)));
    var var_1 = _wgslsmith_f_op_f32(-1242f + global0[_wgslsmith_index_u32(~1u, 28u)]);
    let var_2 = Struct_1(arg_0.a, var_0.b);
    global1 = array<u32, 23>();
    return vec4<u32>(firstLeadingBit(26006u), abs(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(abs(~8070u), 23u)], ~(global1[_wgslsmith_index_u32(45743u, 23u)] & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], 23u)]))), global1[_wgslsmith_index_u32(14181u, 23u)], ~global1[_wgslsmith_index_u32(min(~global1[_wgslsmith_index_u32(0u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27029u, 23u)], 23u)], 23u)], 23u)], 23u)], _wgslsmith_add_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], global1[_wgslsmith_index_u32(0u, 23u)], 51000u), global1[_wgslsmith_index_u32(0u >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(62777u, 23u)], 23u)], 23u)], 23u)] % 32u), 23u)])), 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec4<u32>(~11624u & global1[_wgslsmith_index_u32(12380u, 23u)], 0u, 56597u, _wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 22728u)) ^ func_1(Struct_1(true, vec3<bool>(true, true, true))));
    let var_1 = var_0.zyy;
    global0 = array<f32, 28>();
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(1159i, -(~_wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), 2147483647i, ~u_input.b.x << (_wgslsmith_mult_u32(var_0.x, _wgslsmith_sub_u32(73008u, 24539u)) % 32u)), ~vec4<i32>(-1720i, -29516i, abs(u_input.a.x), 2147483647i) >> ((~vec4<u32>(37418u, 0u, global1[_wgslsmith_index_u32(var_1.x, 23u)], 1u) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, var_1.x, 17962u, var_0.x), vec4<u32>(0u, 0u, global1[_wgslsmith_index_u32(39177u, 23u)], var_1.x))) % vec4<u32>(32u)));
    var var_3 = 0i;
    let var_4 = Struct_1(!select(false, any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))), !select(vec3<bool>(all(vec4<bool>(true, false, true, true)), any(vec2<bool>(false, false)), true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), func_4(Struct_1(false, vec3<bool>(false, false, true)), 127f, Struct_1(true, vec3<bool>(false, false, true)), var_0.x).b, vec3<bool>(true, true, true))));
    var_3 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-285f, global0[_wgslsmith_index_u32(var_1.x, 28u)], -647f, 440f)) * vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 28u)], 1277f, -349f, 1134f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 28u)], global0[_wgslsmith_index_u32(1u, 28u)])), _wgslsmith_f_op_f32(max(449f, global0[_wgslsmith_index_u32(14969u, 28u)])), 2159f, _wgslsmith_f_op_f32(f32(-1f) * -256f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(381f, -1000f, global0[_wgslsmith_index_u32(var_0.x, 28u)], -437f)))))), var_0.xzw, vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~1u, 23u)], 28u)] * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-2082f, -1229f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(func_1(Struct_1(var_4.b.x, vec3<bool>(var_4.a, true, var_4.a))).x, 28u)] * 1f)), _wgslsmith_f_op_f32(1136f * _wgslsmith_f_op_f32(-131f - global0[_wgslsmith_index_u32(firstLeadingBit(1u), 28u)])), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(124659u, 17576u), 28u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(var_1.x, 28u)], 201f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57268u, 23u)], 28u)]), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(64462u, 28u)], -2262f, global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 28u)], -788f, global0[_wgslsmith_index_u32(var_1.x, 28u)]), vec3<bool>(var_4.a, false, var_4.a)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-228f, -781f, global0[_wgslsmith_index_u32(1u, 28u)]))))));
}

