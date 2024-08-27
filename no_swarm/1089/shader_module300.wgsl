struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<f32, 8> = array<f32, 8>(-492f, 185f, -321f, 570f, -437f, -1000f, 549f, 656f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(156f - _wgslsmith_f_op_f32(global1.a.x - global0.a.x)) + _wgslsmith_f_op_f32(select(-288f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 8u)]), all(vec4<bool>(true, true, true, false))))), _wgslsmith_f_op_f32(-global0.a.x)), -_wgslsmith_mod_vec4_i32(global1.b >> (~vec4<u32>(u_input.a, u_input.a, 24775u, u_input.a) % vec4<u32>(32u)), global0.b));
    global2 = array<f32, 8>();
    let var_0 = select(global0.b.wy, select(_wgslsmith_clamp_vec2_i32(global0.b.xx, global1.b.xx, -global0.b.wy) ^ -vec2<i32>(global0.b.x, global0.b.x), vec2<i32>(_wgslsmith_clamp_i32(~(-13732i), global1.b.x, -1i), reverseBits(2147483647i)), true), vec2<bool>(true, true));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), -vec4<i32>(625i, ~_wgslsmith_clamp_i32(-22685i, var_0.x, -55223i), global1.b.x, _wgslsmith_dot_vec4_i32(global0.b, vec4<i32>(global0.b.x, 1i, var_0.x, -2147483647i)) << (~4294967295u % 32u)));
    global1 = Struct_1(global0.a, vec4<i32>(select(-max(-1i, var_0.x), ~(-35606i), true), firstLeadingBit(-5124i), 20567i, global1.b.x));
    return global2[_wgslsmith_index_u32(min(min(~firstLeadingBit(22578u), u_input.a) ^ u_input.a, u_input.a), 8u)];
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = true;
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(706f + -219f) * _wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(func_3()))), global0.b);
    return vec2<bool>(true, var_0);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(298f, global2[_wgslsmith_index_u32(1u, 8u)]), vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 8u)], -1000f), arg_1.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(61527u, 8u)]) + global1.a)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-941f, global1.a.x) - vec2<f32>(1078f, global0.a.x)), _wgslsmith_f_op_vec2_f32(global1.a + vec2<f32>(global1.a.x, global2[_wgslsmith_index_u32(u_input.a, 8u)]))))))), vec4<i32>(~global1.b.x, 0i, _wgslsmith_mod_i32(countOneBits(-global0.b.x), firstLeadingBit(_wgslsmith_mult_i32(global1.b.x, 675i))), -15260i));
    var var_1 = arg_1;
    let var_2 = vec2<u32>(0u, reverseBits(29424u));
    var var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(6093u, 0u), var_2);
    global2 = array<f32, 8>();
    return select(func_2(firstLeadingBit(arg_1.b), min(select(var_0.b.xyw, global0.b.wyx, false) << (~vec3<u32>(4294967295u, 1u, var_3.x) % vec3<u32>(32u)), var_0.b.xzx), Struct_2(func_2(-2147483647i, ~global0.b.zyz, Struct_2(var_1.a, var_1.b), Struct_1(vec2<f32>(var_0.a.x, -738f), global1.b)).x, 1i), Struct_1(vec2<f32>(-1000f, _wgslsmith_div_f32(2051f, 644f)), global1.b)), arg_0, vec2<bool>(!func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, global0.b.x, global1.b.x, 0i), var_0.b), vec3<i32>(global0.b.x, 0i, -1i), arg_1, Struct_1(global1.a, global0.b)).x, !(!arg_1.a)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = false;
    var var_1 = Struct_2(true, 8991i);
    var var_2 = select(!select(!vec2<bool>(var_1.a, true), !(!vec2<bool>(var_1.a, var_1.a)), func_4(func_2(var_1.b, vec3<i32>(global1.b.x, -2147483647i, var_1.b), Struct_2(true, global1.b.x), Struct_1(vec2<f32>(-1000f, 210f), global1.b)), Struct_2(true, -60564i))), func_4(!(!(!vec2<bool>(true, var_1.a))), Struct_2(all(vec2<bool>(true, false)) && select(var_1.a, false, var_1.a), _wgslsmith_div_i32(-12076i, i32(-1i) * -1i))), var_1.a);
    var_1 = Struct_2(true, -1i);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -102f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f)), all(vec2<bool>(true, var_1.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.x * global2[_wgslsmith_index_u32(u_input.a, 8u)])))))), -141f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - -167f));
    return Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.a.x, 1186f))), -331f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(global0.a, global0.a, vec2<bool>(true, var_1.a))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(global0.a, vec2<f32>(global0.a.x, global0.a.x), vec2<bool>(true, true)))))))), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 8>();
    let var_0 = _wgslsmith_mod_u32(1u, max(min(firstTrailingBit(u_input.a | 20547u), u_input.a), max(u_input.a, ~u_input.a)));
    var var_1 = firstLeadingBit(countOneBits(abs(~vec4<u32>(0u, 1u, var_0, var_0) & vec4<u32>(2321u, 36897u, 26441u, var_0))));
    global1 = func_1(vec4<u32>(~u_input.a, _wgslsmith_mod_u32(23701u, select(reverseBits(var_1.x), _wgslsmith_div_u32(4294967295u, var_0), true)), ~countOneBits(~0u), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.x, var_1.yxw, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - _wgslsmith_f_op_f32(649f - -1070f))))), global1.b.x);
}

