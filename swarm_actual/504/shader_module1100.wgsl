struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>) -> u32 {
    let var_0 = u_input.b;
    return var_0;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(func_3(Struct_1(arg_0.xx, -132f, select(vec4<u32>(42707u, 70175u, u_input.a, u_input.a), vec4<u32>(53580u, u_input.b, u_input.b, u_input.a), false), !vec3<bool>(true, global0.x, true)), ~(~vec4<u32>(u_input.a, 8729u, 19142u, u_input.b)), abs(select(vec4<u32>(0u, u_input.b, u_input.a, u_input.b), vec4<u32>(u_input.a, 4294967295u, 4294967295u, 15853u), false))), abs(abs(41147u)), _wgslsmith_div_u32(firstLeadingBit(4294967295u), ~17158u) >> (u_input.a % 32u), reverseBits(1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(~0u), ~u_input.a | 4294967295u, u_input.b, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.a, u_input.b)))), vec4<u32>(func_3(Struct_1(vec2<i32>(arg_0.x, arg_0.x), 770f, vec4<u32>(70962u, u_input.b, u_input.a, 24826u), vec3<bool>(global0.x, false, false)), vec4<u32>(0u, u_input.a, u_input.a, 4408u), vec4<u32>(u_input.a, 4294967295u, 28779u, 20436u)), _wgslsmith_mod_u32(func_3(Struct_1(arg_0.zx, 1605f, vec4<u32>(1u, u_input.b, 74900u, u_input.a), vec3<bool>(false, true, arg_1)), vec4<u32>(1u, 32344u, u_input.a, 0u), vec4<u32>(u_input.b, 41437u, u_input.b, u_input.a)), _wgslsmith_add_u32(101560u, 62127u)), 4294967295u, 1u), ~vec4<u32>(u_input.b, u_input.a, ~u_input.a, 1u)));
    var var_1 = Struct_1(firstLeadingBit(vec2<i32>(abs(-arg_0.x), ~(-2147483647i))), 1459f, var_0, vec3<bool>(global0.x && true, !(!(!arg_1)), false));
    global0 = select(var_1.d.yx, !var_1.d.yy, true);
    let var_2 = -_wgslsmith_sub_i32(_wgslsmith_sub_i32(-22394i, ~var_1.a.x), -38i) > _wgslsmith_dot_vec2_i32(countOneBits(countOneBits(arg_0.xz) ^ vec2<i32>(2147483647i, 2147483647i)), -vec2<i32>(0i, ~(-2147483647i)));
    let var_3 = Struct_1(min(vec2<i32>(1i, arg_0.x), arg_0.xx), var_1.b, min(~vec4<u32>(24973u, var_0.x, 57563u, 78156u) & countOneBits(firstLeadingBit(vec4<u32>(17757u, var_0.x, 0u, 0u))), vec4<u32>(4294967295u, var_1.c.x, min(65678u, 6122u) << (_wgslsmith_clamp_u32(38552u, 0u, var_0.x) % 32u), 7482u)), !vec3<bool>(_wgslsmith_f_op_f32(-var_1.b) <= 297f, true, var_2));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(round(-1000f)));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: i32) -> vec4<bool> {
    global0 = !vec2<bool>(true && all(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, false), vec2<bool>(false, global0.x))), any(!(!vec4<bool>(global0.x, global0.x, false, true))));
    var var_0 = Struct_1(~min(vec2<i32>(1i, 1i), vec2<i32>(-1i, arg_2) & vec2<i32>(arg_2, arg_2)) ^ _wgslsmith_mult_vec2_i32(~vec2<i32>(-12631i, arg_2), max(min(vec2<i32>(arg_2, arg_2), vec2<i32>(1i, arg_2)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2, arg_2), vec2<i32>(-34154i, arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-222f))), -2025f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(vec3<i32>(2147483647i, 4436i, arg_2) ^ vec3<i32>(arg_2, -1i, arg_2), true)), 1f, all(vec3<bool>(true, global0.x, true))))), ~firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(39706u, 75891u, 34458u, arg_1), vec4<u32>(arg_1, arg_0, arg_1, 1u)), vec4<u32>(61829u, 0u, arg_1, arg_1))), vec3<bool>(true, !select(!global0.x, global0.x, true), true));
    let var_1 = vec4<i32>(0i, -(~var_0.a.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, arg_2, arg_2) << (vec3<u32>(32294u, var_0.c.x, 4294967295u) % vec3<u32>(32u)), countOneBits(vec3<i32>(-40942i, 0i, 16917i)))), -arg_2, 0i);
    var_0 = Struct_1(select(var_1.wx, vec2<i32>(1i, arg_2), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), firstTrailingBit(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, var_0.c.x, var_0.c.x, 1u), vec4<u32>(arg_1, arg_1, 1u, arg_1)))), var_0.d);
    let var_2 = ~(~reverseBits(vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(var_1.zxx, vec3<i32>(-52709i, 63337i, 276i)), _wgslsmith_dot_vec4_i32(vec4<i32>(21926i, 12009i, -1i, var_1.x), var_1), _wgslsmith_sub_i32(-49835i, 37163i))));
    return !select(vec4<bool>(select(all(var_0.d), global0.x, true), true, !all(vec2<bool>(var_0.d.x, global0.x)), global0.x), !select(!vec4<bool>(var_0.d.x, true, var_0.d.x, var_0.d.x), select(vec4<bool>(false, false, false, true), vec4<bool>(true, global0.x, true, true), vec4<bool>(false, true, global0.x, false)), select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(var_0.d.x, global0.x, global0.x, false), var_0.d.x)), !any(vec4<bool>(var_0.d.x, true, global0.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec2<bool>(all(select(!vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), global0.x | true)), any(select(vec4<bool>(global0.x, false, true, false), select(vec4<bool>(false, global0.x, false, true), vec4<bool>(false, false, global0.x, false), vec4<bool>(false, true, global0.x, false)), func_1(u_input.a, 30185u, 2147483647i))));
    global0 = func_1(1u & (~(~u_input.b) << (u_input.a % 32u)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, u_input.b, 1u)), vec3<u32>(min(u_input.a, u_input.a), 1u, ~21147u)) | 4294967295u, -58564i >> (u_input.b % 32u)).wy;
    var var_0 = 1u;
    let var_1 = Struct_1(-vec2<i32>(~1i, 16280i), _wgslsmith_div_f32(351f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1396f)) - _wgslsmith_f_op_f32(f32(-1f) * -1311f)))), ~(~(~vec4<u32>(u_input.a, 1u, u_input.b, 29952u))), vec3<bool>(true, all(!select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, false), global0.x)), (0u >> (_wgslsmith_mult_u32(39205u, u_input.b) % 32u)) > ~(2227u & u_input.a)));
    let var_2 = ~reverseBits(~1u);
    let var_3 = func_1(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(24562u, 53663u >> (_wgslsmith_clamp_u32(4294967295u, 16965u, 6541u) % 32u)), ~(~u_input.a), 48087u), u_input.b, 1150i);
    let x = u_input.a;
    s_output = StorageBuffer(~0u, countOneBits(min(1u, 1u) >> (1u % 32u)));
}

