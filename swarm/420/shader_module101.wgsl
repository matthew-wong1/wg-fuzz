struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
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

var<private> global0: i32;

var<private> global1: array<i32, 29> = array<i32, 29>(-1i, 2147483647i, 4228i, -11072i, i32(-2147483648), -1i, 1i, -1i, 29098i, i32(-2147483648), 24548i, -59472i, 20978i, 9504i, 1i, 1i, -26948i, -13813i, 1i, -1i, -9542i, -67981i, -1i, 0i, -10824i, 2147483647i, -1i, 30721i, 20535i);

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(39481i, vec4<i32>(-34194i, 2147483647i, 25649i, -7477i)), Struct_1(26148i, vec4<i32>(22203i, i32(-2147483648), -7464i, 38970i)), Struct_1(747i, vec4<i32>(-46252i, 2147483647i, -29318i, 2811i)), Struct_1(1i, vec4<i32>(68608i, -1i, -2138i, -17874i)), Struct_1(i32(-2147483648), vec4<i32>(1i, 0i, -39515i, 0i)), Struct_1(0i, vec4<i32>(1i, -44711i, i32(-2147483648), 12267i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<i32> {
    global0 = _wgslsmith_mult_i32(firstTrailingBit(arg_1.b.x) & 19115i, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(14202u, ~abs(64166u)), 29u)]);
    return abs(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], abs(0i), ~arg_1.b.x, _wgslsmith_dot_vec4_i32(-arg_1.b & (arg_1.b >> (u_input.a % vec4<u32>(32u))), arg_1.b)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !select(vec3<bool>(!all(vec4<bool>(true, true, false, true)), false, true), select(vec3<bool>(u_input.a.x > 9426u, all(vec2<bool>(false, true)), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, 13305i > arg_0.a)), !vec3<bool>(all(vec2<bool>(true, true)), false, true));
    global2 = array<Struct_1, 6>();
    var var_1 = ~(_wgslsmith_sub_u32(~u_input.a.x | 36537u, 1u) & select(~u_input.a.x << (min(1u, 0u) % 32u), 1u, false));
    var var_2 = global2[_wgslsmith_index_u32(43152u, 6u)];
    global1 = array<i32, 29>();
    return Struct_1(~arg_0.a ^ arg_0.b.x, select(vec4<i32>(abs(var_2.b.x), firstTrailingBit(0i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.b.yz, arg_0.b.wz), vec2<i32>(1i, global1[_wgslsmith_index_u32(u_input.b.x, 29u)]) ^ vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], -1i)), select(~global1[_wgslsmith_index_u32(u_input.b.x, 29u)], _wgslsmith_dot_vec2_i32(var_2.b.yx, vec2<i32>(var_2.a, arg_0.a)), !var_0.x)), -func_3(~125486u, Struct_1(2147483647i, vec4<i32>(arg_0.b.x, 16692i, 70774i, global1[_wgslsmith_index_u32(4294967295u, 29u)]))), vec4<bool>(var_0.x, true, true, true)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, select(5275u, 4294967295u, false)), 4294967295u) >> (u_input.a.x % 32u));
    var var_1 = _wgslsmith_sub_u32(~((u_input.a.x >> (1u % 32u)) ^ u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, ~4294967295u, ~var_0, ~0u), u_input.a ^ vec4<u32>(var_0, var_0, u_input.b.x, 1u))) <= 4294967295u;
    var var_2 = vec3<i32>(_wgslsmith_add_i32(-global1[_wgslsmith_index_u32(1u, 29u)], arg_0.a), global1[_wgslsmith_index_u32(0u, 29u)], _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i & arg_0.a, _wgslsmith_mod_i32(abs(0i), global1[_wgslsmith_index_u32(u_input.a.x, 29u)] & 1i)), 2147483647i));
    let var_3 = global2[_wgslsmith_index_u32(u_input.b.x, 6u)];
    global2 = array<Struct_1, 6>();
    return Struct_1(_wgslsmith_sub_i32(arg_0.a ^ (-2147483647i << (min(51323u, var_0) % 32u)), firstLeadingBit(arg_0.a)), ~firstTrailingBit(_wgslsmith_mult_vec4_i32(min(arg_0.b, vec4<i32>(-11928i, var_2.x, -20241i, global1[_wgslsmith_index_u32(1u, 29u)])), func_3(u_input.a.x, global2[_wgslsmith_index_u32(var_0, 6u)]))));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = -select(arg_0, -2147483647i, false);
    global2 = array<Struct_1, 6>();
    global1 = array<i32, 29>();
    global0 = -40441i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -351f) - 1f) * 1f));
    return ~4294967295u;
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_1(2147483647i, vec4<i32>(-_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(select(u_input.b.x, u_input.a.x, false), 29u)], 1i), ~(-1i), global1[_wgslsmith_index_u32(u_input.b.x ^ u_input.b.x, 29u)] | select(-2147483647i, global1[_wgslsmith_index_u32(0u, 29u)] | -53048i, true), global1[_wgslsmith_index_u32(func_5(_wgslsmith_sub_i32(-1i, global1[_wgslsmith_index_u32(u_input.a.x, 29u)]) << (30810u % 32u), _wgslsmith_div_i32(-2147483647i, -2147483647i), func_4(func_2(Struct_1(1i, vec4<i32>(19227i, global1[_wgslsmith_index_u32(u_input.b.x, 29u)], global1[_wgslsmith_index_u32(u_input.b.x, 29u)], 2147483647i)))), 16543i), 29u)]));
    let var_1 = true;
    global0 = global1[_wgslsmith_index_u32(16494u, 29u)];
    global1 = array<i32, 29>();
    let var_2 = Struct_1(global1[_wgslsmith_index_u32(func_5(reverseBits(~_wgslsmith_div_i32(var_0.b.x, 35772i)), -2147483647i, func_4(Struct_1(var_0.b.x, func_3(u_input.a.x, Struct_1(global1[_wgslsmith_index_u32(0u, 29u)], var_0.b)))), 2147483647i ^ global1[_wgslsmith_index_u32(~(~u_input.a.x), 29u)]), 29u)], max(var_0.b, select(max(vec4<i32>(var_0.a, -1i, var_0.a, -57525i), firstLeadingBit(vec4<i32>(-2147483647i, -1i, var_0.b.x, global1[_wgslsmith_index_u32(9408u, 29u)]))), vec4<i32>(-2147483647i, var_0.b.x, max(37599i, 2147483647i), _wgslsmith_clamp_i32(var_0.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], -2147483647i)), var_1 && false)));
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1448f;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_1());
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, -292f, var_0), vec3<f32>(-118f, var_1.x, -326f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, var_0, -407f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -422f, var_0) + vec3<f32>(1098f, 1891f, -923f)))))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), vec3<bool>(false, select(false, false, false), true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(295f + _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_div_f32(-808f, _wgslsmith_f_op_f32(-649f + 1651f))), reverseBits(~_wgslsmith_dot_vec3_i32(-vec3<i32>(global1[_wgslsmith_index_u32(30713u, 29u)], 1i, global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), ~vec3<i32>(-1i, global1[_wgslsmith_index_u32(11311u, 29u)], 2147483647i))));
}

