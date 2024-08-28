struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-1i, -26942i, -5000i, 7395i));

var<private> global1: bool = true;

var<private> global2: f32 = 272f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_i32(global0.a, global0.a & global0.a));
    return 601f;
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = arg_0 << (_wgslsmith_div_u32(_wgslsmith_mult_u32(~arg_0, 17656u), _wgslsmith_sub_u32(~(~22267u), 0u ^ min(u_input.b.x, 0u))) % 32u);
    global1 = _wgslsmith_mod_u32(~countOneBits(var_0), 1u) != reverseBits(7822u);
    var var_1 = vec2<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, -51593i));
    let var_2 = !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) > _wgslsmith_f_op_f32(1674f + _wgslsmith_f_op_f32(func_3(global0.a.wx, ~534u))));
    var_1 = -global0.a.yx;
    return _wgslsmith_dot_vec2_i32(global0.a.wy, global0.a.wy) & -49497i;
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    var var_0 = ~(vec3<u32>(3868u, 0u, _wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b)) & vec3<u32>(9504u, 0u, 4294967295u));
    global0 = Struct_1(~_wgslsmith_mod_vec4_i32(vec4<i32>(func_2(1u), ~(-6656i), max(-57968i, u_input.a), _wgslsmith_mod_i32(0i, 2147483647i)), vec4<i32>(global0.a.x, ~global0.a.x, 10224i << (u_input.b.x % 32u), global0.a.x | u_input.a)));
    let var_1 = global0.a.x;
    let var_2 = reverseBits(firstTrailingBit(vec3<u32>(abs(var_0.x), var_0.x, select(29062u, u_input.b.x, true))) >> (_wgslsmith_add_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(0u, 1u, var_0.x), vec3<u32>(4294967295u, 1u, u_input.b.x))), vec3<u32>(u_input.b.x, _wgslsmith_div_u32(4294967295u, 1u), u_input.b.x)) % vec3<u32>(32u)));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1446f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -1470f));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-970f * _wgslsmith_f_op_f32(select(938f, _wgslsmith_f_op_f32(f32(-1f) * -265f), true))))));
    var var_1 = vec4<i32>(~(-1i), 2147483647i, _wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec2_i32(global0.a.xz << (select(vec2<u32>(82035u, 1u), vec2<u32>(4294967295u, 4294967295u), true) % vec2<u32>(32u)), ~firstLeadingBit(global0.a.yw))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(317f, -485f)))));
    let var_2 = Struct_1(_wgslsmith_clamp_vec4_i32(~_wgslsmith_mod_vec4_i32(-vec4<i32>(var_1.x, var_1.x, global0.a.x, -12801i), _wgslsmith_clamp_vec4_i32(global0.a, global0.a, vec4<i32>(u_input.a, 2147483647i, var_1.x, -7889i))), countOneBits(vec4<i32>(-74873i, 2147483647i, 2147483647i, var_1.x)), select(global0.a, global0.a, vec4<bool>(true, true, var_1.x <= 1i, true))));
    let var_3 = var_2;
    let var_4 = abs(u_input.b.x);
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_1.xz, var_4))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1203f, 1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-393f)), _wgslsmith_f_op_f32(f32(-1f) * -383f)) - _wgslsmith_f_op_f32(2224f * _wgslsmith_f_op_f32(step(-407f, 728f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(772f, _wgslsmith_f_op_f32(trunc(-2154f)), any(vec3<bool>(false, false, true))))))), firstLeadingBit(0u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, var_4, u_input.b.x), _wgslsmith_sub_vec4_u32(~vec4<u32>(48990u, var_4, var_4, var_4), vec4<u32>(27582u, var_4, 27724u, var_4))), vec4<u32>(max(u_input.b.x >> (u_input.b.x % 32u), abs(var_4)), ~firstTrailingBit(u_input.b.x), 1u, u_input.b.x)));
}

