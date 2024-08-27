struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(19440u);

var<private> global1: vec4<i32> = vec4<i32>(-1i, 40967i, 47403i, i32(-2147483648));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    global1 = firstLeadingBit(vec4<i32>(~u_input.b.x, 1i, u_input.b.x, firstLeadingBit(global1.x)));
    var var_0 = arg_1;
    let var_1 = arg_3.x;
    let var_2 = Struct_1(~1u | ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.zyy, vec3<u32>(arg_0.x, arg_0.x, 19370u)), ~vec3<u32>(var_0.c.x, 1u, var_0.c.x)), 1u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.b.x, -581f, -217f), arg_1.b, arg_3.x))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1790f, arg_2.b.x, arg_1.b.x)), var_0.b))), _wgslsmith_mod_vec2_u32(max(vec2<u32>(22790u, ~u_input.a.x), _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 95009u), countOneBits(vec2<u32>(arg_1.a, arg_1.a)))), vec2<u32>(reverseBits(4294967295u), ~_wgslsmith_div_u32(15296u, 71357u))));
    global1 = firstTrailingBit(firstLeadingBit(min(max(vec4<i32>(-1i, global1.x, u_input.b.x, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, -5791i, u_input.b.x, u_input.b.x), vec4<i32>(-1083i, -11330i, 1127i, u_input.b.x), vec4<i32>(2712i, 54187i, global1.x, global1.x))), abs(vec4<i32>(2147483647i, 2147483647i, global1.x, u_input.b.x)) >> (vec4<u32>(4294967295u, 27767u, var_0.c.x, var_2.c.x) % vec4<u32>(32u)))));
    return (_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(4294967295u), arg_2.c.x << (25113u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(51811u, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 4294967295u), vec3<u32>(296u, 50584u, global0[_wgslsmith_index_u32(0u, 1u)])), global0[_wgslsmith_index_u32(~arg_0.x, 1u)]), firstTrailingBit(u_input.a)) > (_wgslsmith_add_u32(0u, _wgslsmith_mult_u32(0u, arg_1.c.x)) << (min(0u, firstLeadingBit(u_input.a.x)) % 32u))) && arg_3.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = -global1.x >> (firstTrailingBit(min(4294967295u, 4294967295u)) % 32u);
    var var_1 = all(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), false == all(vec4<bool>(true, true, true, true)), select(!(var_0 < global1.x), true && func_3(arg_2.c, Struct_1(17200u, vec3<f32>(-2254f, -1109f, 547f), vec2<u32>(u_input.a.x, u_input.a.x)), arg_2, vec3<bool>(false, true, false)), true)));
    var_1 = false;
    global0 = array<u32, 1>();
    let var_2 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~u_input.a, u_input.a), ~(~select(u_input.a, vec4<u32>(arg_3, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(59678u, 1u)], 27119u), vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1256f, _wgslsmith_f_op_f32(round(302f)), arg_0.x)))), ~u_input.a.xw);
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> bool {
    let var_0 = arg_0;
    global0 = array<u32, 1>();
    var var_1 = select(~select(~u_input.a.yzw, vec3<u32>(0u, 0u, var_0.c.x), vec3<bool>(true, true, true)), u_input.a.zyy, vec3<bool>(~global0[_wgslsmith_index_u32(108109u, 1u)] >= global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 634u, 37141u), u_input.a.zwx), 1u)], true, false)) ^ ~abs(u_input.a.zyw & ~u_input.a.yyw);
    let var_2 = func_2(vec2<f32>(var_0.b.x, -2560f), _wgslsmith_f_op_vec2_f32(var_0.b.yy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1160f, arg_0.b.x))))), Struct_1(abs(var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b * vec3<f32>(var_0.b.x, 1243f, -1252f)))), vec2<u32>(var_0.a, 4294967295u)), var_0.a);
    global1 = -vec4<i32>(2147483647i, 1i, -arg_1.x, reverseBits(36580i));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec3<bool>(true, all(vec4<bool>(false, true, true, false)), func_1(Struct_1(global0[_wgslsmith_index_u32(52919u, 1u)], vec3<f32>(-829f, 541f, 603f), u_input.a.wy), vec2<i32>(u_input.b.x, global1.x))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)), false), select(vec3<bool>(true, true, true), vec3<bool>(func_3(u_input.a.zw, Struct_1(77126u, vec3<f32>(-246f, 1216f, -1217f), u_input.a.zy), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], vec3<f32>(1763f, -1336f, -1000f), u_input.a.yz), vec3<bool>(false, true, true)), true, true), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), true))), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)] != global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 1u)], true, _wgslsmith_mod_u32(4307u, 41810u) <= (0u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)]))), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), true), select(vec3<bool>(true, true, any(vec3<bool>(true, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(true, false)), false, true)), vec3<bool>(true, !all(vec2<bool>(false, true)), 1559f >= _wgslsmith_f_op_f32(trunc(236f)))), true);
    let var_1 = all(select(select(vec3<bool>(global1.x <= 1i, true, false), !(!vec3<bool>(var_0.x, false, var_0.x)), !select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, true, var_0.x), var_0.x)), select(select(vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, false)), vec3<bool>(var_0.x, var_0.x | var_0.x, func_1(Struct_1(22487u, vec3<f32>(-1884f, 1000f, 883f), u_input.a.wz), vec2<i32>(-9949i, 0i))), any(vec2<bool>(false, var_0.x))), vec3<bool>(true, true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, var_0.x, false), vec3<bool>(true, false, var_0.x))))));
    var var_2 = !var_0.x;
    let var_3 = Struct_1(abs(~(global0[_wgslsmith_index_u32(1u, 1u)] >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 1u)])) % 32u))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-662f * _wgslsmith_f_op_f32(f32(-1f) * -326f)), 1f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-317f - 188f), _wgslsmith_f_op_f32(ceil(-174f)), 1094f), vec3<f32>(_wgslsmith_f_op_f32(1595f * -430f), _wgslsmith_f_op_f32(125f * -965f), _wgslsmith_f_op_f32(max(239f, -2131f)))))), min(_wgslsmith_mult_vec2_u32(reverseBits(~u_input.a.wx), u_input.a.wy), u_input.a.wz));
    global0 = array<u32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, countOneBits(global1.xy & global1.zy));
}

