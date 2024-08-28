struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: f32;

var<private> global2: array<f32, 1> = array<f32, 1>(1000f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec2<i32>) -> bool {
    let var_0 = Struct_1((true || (arg_1.x <= -976f)) || all(vec4<bool>(true, all(vec3<bool>(false, false, false)), any(vec4<bool>(true, false, true, true)), true)), 84954u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(504f, arg_1.x, 1000f)))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(~u_input.a.x, 29u)], _wgslsmith_f_op_f32(210f * 554f), global2[_wgslsmith_index_u32(4294967295u, 1u)])))));
    var var_1 = false;
    global0 = array<f32, 29>();
    let var_2 = var_0;
    global2 = array<f32, 1>();
    return var_0.a;
}

fn func_3(arg_0: vec4<i32>) -> bool {
    global0 = array<f32, 29>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], -158f, global0[_wgslsmith_index_u32(639u, 29u)]) + vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], -1882f, 734f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-258f, global0[_wgslsmith_index_u32(0u, 29u)], 836f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1127f, -249f, -846f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], 925f, 617f) * vec3<f32>(global2[_wgslsmith_index_u32(80984u, 1u)], global2[_wgslsmith_index_u32(u_input.c.x, 1u)], global2[_wgslsmith_index_u32(67444u, 1u)]))))))) - vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.a.x, 28908u, u_input.c.x)), u_input.c) | 0u, 29u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(reverseBits(u_input.c.x), 29u)], _wgslsmith_f_op_f32(trunc(109f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1005f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(851f, _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.a.x, 1u)])))) * -1209f)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~4294967295u, 29u)] * _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-218f - -1000f) + -1665f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.a.x, 1u)]))))));
    let var_2 = Struct_1(true, _wgslsmith_clamp_u32(~_wgslsmith_add_u32(firstLeadingBit(19566u), reverseBits(u_input.a.x)), 69828u, u_input.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(u_input.c.x, 1u)], -205f), vec3<f32>(var_0.x, global0[_wgslsmith_index_u32(1005u, 29u)], global2[_wgslsmith_index_u32(19247u, 1u)]), vec3<bool>(false, false, true))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1727f, 324f, global0[_wgslsmith_index_u32(u_input.c.x, 29u)])))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 906f) + vec3<f32>(global2[_wgslsmith_index_u32(1u, 1u)], -380f, -234f)))))));
    let var_3 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(31174u, 29u)]);
    return any(!(!vec3<bool>(true, var_2.a, false))) && var_2.a;
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_1 {
    var var_0 = (max(-54445i >> (~u_input.a.x % 32u), (arg_1 | -1i) ^ arg_1) & -39559i) & -1i;
    let var_1 = Struct_1(all(!(!vec2<bool>(arg_0, true))) | (!func_2(u_input.c, vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 29u)]), vec2<i32>(-21349i, u_input.b), vec2<i32>(-1i, u_input.b)) || (true | func_3(vec4<i32>(22497i, arg_1, arg_1, -15246i)))), u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -972f), global2[_wgslsmith_index_u32(u_input.c.x, 1u)], -2624f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-600f, var_1.c.x, -1661f, 156f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1096f, global0[_wgslsmith_index_u32(var_1.b, 29u)], -732f, global2[_wgslsmith_index_u32(var_1.b, 1u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(1402f, global0[_wgslsmith_index_u32(4294967295u, 29u)], -176f, 1569f)), all(select(vec2<bool>(false, arg_0), vec2<bool>(var_1.a, arg_0), false))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(-2131f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 1u)]), arg_0)), var_1.c.x, global2[_wgslsmith_index_u32(var_1.b, 1u)], -610f))), func_3(vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(32441i, 2147483647i, -1i), vec3<i32>(u_input.b, arg_1, -33540i)), _wgslsmith_sub_i32(countOneBits(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_1, 64210i, arg_1), vec4<i32>(u_input.b, 1i, 2147483647i, u_input.b))), 1i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-23291i, -5204i, -18016i), -2147483647i)))));
    var var_3 = Struct_1(true, _wgslsmith_add_u32(var_1.b, 4294967295u), vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 1u)]) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 1u)] - global2[_wgslsmith_index_u32(49857u, 1u)])) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.b, 29u)]))));
    return Struct_1(false, 18996u, var_2.yxw);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 1>();
    var var_0 = reverseBits(countOneBits(~vec4<u32>(u_input.a.x, 4294967295u, ~u_input.c.x, ~1u)));
    var var_1 = func_1(false, ~u_input.b);
    var_1 = func_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(-34144i, u_input.b, u_input.b, u_input.b) | (vec4<i32>(u_input.b, u_input.b, 16298i, u_input.b) & vec4<i32>(18890i, 2147483647i, u_input.b, u_input.b)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, -23695i, 24005i), vec4<i32>(1i, -44955i, u_input.b, 5818i)), vec4<i32>(-36720i, 0i, u_input.b, u_input.b), firstTrailingBit(vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b)))) > ~_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, u_input.b), 33337i), -69493i);
    var_0 = ~vec4<u32>(_wgslsmith_mult_u32(abs(u_input.a.x), abs(u_input.c.x)) ^ u_input.a.x, select(4294967295u, ~var_0.x, !var_1.a) | select(0u, firstLeadingBit(u_input.c.x), var_1.a), var_1.b, 15617u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstTrailingBit(-24647i), u_input.b ^ 2147483647i, u_input.b | u_input.b, -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.yz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.yx)), _wgslsmith_mod_u32(44732u, _wgslsmith_div_u32(var_1.b, 1u)) | _wgslsmith_div_u32(reverseBits(0u), func_1(true, 23514i).b), _wgslsmith_mod_vec3_i32(-max(vec3<i32>(24784i, -2147483647i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(1i, ~2147483647i, 12737i)));
}

