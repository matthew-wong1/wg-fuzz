struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = ~max(vec3<u32>(_wgslsmith_sub_u32(~0u, _wgslsmith_sub_u32(4725u, arg_2.x)), 73300u, _wgslsmith_sub_u32(~u_input.d.x, arg_1)), ~vec3<u32>(u_input.a.x | 8672u, abs(arg_3.a), ~arg_1));
    let var_1 = Struct_1(countOneBits(u_input.c.x) & arg_2.x, _wgslsmith_f_op_f32(select(206f, arg_3.b, false)));
    let var_2 = Struct_1(_wgslsmith_mod_u32(firstTrailingBit(~firstLeadingBit(arg_2.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(max(var_0.yz, vec2<u32>(arg_3.a, 63054u)), vec2<u32>(1u, 0u)), reverseBits(vec2<u32>(var_0.x, arg_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(step(-264f, -600f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_3.b)), _wgslsmith_f_op_f32(arg_3.b * -595f))));
    var var_3 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.e.x), select(countOneBits(vec2<i32>(u_input.e.x, -26752i)), u_input.e, select(arg_0.yy, vec2<bool>(true, arg_0.x), arg_0.x)), vec2<i32>(_wgslsmith_add_i32(-1i, u_input.e.x ^ u_input.e.x), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), vec3<i32>(u_input.e.x, -22494i, -25543i), vec3<i32>(u_input.e.x, -15785i, u_input.e.x)), -vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x)))), vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_add_i32(u_input.e.x, u_input.e.x), firstTrailingBit(u_input.e.x)));
    let var_4 = Struct_1(var_2.a ^ reverseBits(~firstTrailingBit(4294967295u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(528f, _wgslsmith_f_op_f32(1000f - var_2.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - arg_3.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b + -884f), 285f))))));
    return !(!(!(!select(arg_0, arg_0, false))));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    let var_1 = func_3(!(!vec3<bool>(49346u > u_input.d.x, true, all(vec4<bool>(false, true, true, true)))), 1u, firstTrailingBit(select(~vec4<u32>(30014u, u_input.c.x, u_input.c.x, u_input.d.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.c.x), vec4<u32>(u_input.a.x, u_input.d.x, u_input.c.x, 58521u)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, true, true)))), Struct_1(u_input.b.x, _wgslsmith_div_f32(-391f, -628f)));
    var var_2 = true == var_1.x;
    var_2 = true;
    var var_3 = vec4<i32>(-2147483647i, 1i, countOneBits(firstTrailingBit(-_wgslsmith_sub_i32(-1i, u_input.e.x))), _wgslsmith_add_i32(~_wgslsmith_div_i32(2147483647i, select(u_input.e.x, -48275i, true)), ~u_input.e.x));
    return Struct_1(11903u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2563f, -192f, false)))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -265f;
    var var_1 = arg_1;
    var var_2 = func_2();
    let var_3 = func_2();
    var var_4 = !(!(!vec2<bool>(select(false, arg_0.x, arg_0.x), !arg_0.x)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<bool>(all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, false))), true, false, true), Struct_1(~(u_input.a.x << (_wgslsmith_clamp_u32(0u, u_input.c.x, 27750u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(335f, 459f))))));
    let var_1 = -u_input.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -850f)))), _wgslsmith_div_f32(-1491f, _wgslsmith_div_f32(-1741f, var_0.b))), firstTrailingBit(-vec4<i32>(u_input.e.x, 0i, ~1i, _wgslsmith_add_i32(var_1, u_input.e.x))));
}

