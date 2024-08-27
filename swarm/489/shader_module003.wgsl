struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: f32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 22820u, 4294967295u, 10282u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = vec3<i32>(abs(_wgslsmith_div_i32(50002i, firstTrailingBit(u_input.d))), countOneBits(countOneBits(_wgslsmith_mod_i32(u_input.a, 13122i))), u_input.a) | reverseBits(vec3<i32>(reverseBits(-u_input.c.x), _wgslsmith_sub_i32(~0i, _wgslsmith_mult_i32(-6516i, 23505i)), -33675i));
    var_0 = ~(abs(~(vec3<i32>(var_0.x, var_0.x, -14562i) << (vec3<u32>(global0.x, 0u, global0.x) % vec3<u32>(32u)))) ^ u_input.e);
    global0 = vec4<u32>(~global0.x, global0.x, 57421u, max(~global0.x, ~58268u));
    let var_1 = -max(-reverseBits(vec3<i32>(u_input.d, u_input.d, -2147483647i)), ~vec3<i32>(var_0.x, var_0.x, u_input.a));
    var_0 = vec3<i32>(-max(firstTrailingBit(-u_input.c.x), select(-var_0.x, _wgslsmith_sub_i32(24121i, var_1.x), true)), max(min(-1i, 0i), _wgslsmith_dot_vec3_i32(u_input.c.xyw, ~u_input.e)), u_input.e.x);
    return global0.x;
}

fn func_2(arg_0: i32) -> vec4<u32> {
    global0 = vec4<u32>(~func_3(), _wgslsmith_mult_u32(~global0.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(global0.x, global0.x)), global0.zy) ^ ~firstLeadingBit(global0.x)), global0.x, global0.x);
    var var_0 = 11207u;
    let var_1 = u_input.d;
    var var_2 = 1425u;
    var_0 = ~((_wgslsmith_add_u32(global0.x ^ global0.x, global0.x & global0.x) | reverseBits(41135u)) & ((2118u | (global0.x & global0.x)) & ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<u32>(global0.x, global0.x, 104277u, global0.x))));
    return min(vec4<u32>(_wgslsmith_clamp_u32(global0.x, global0.x, 1u), global0.x, global0.x, reverseBits(_wgslsmith_add_u32(global0.x, global0.x))), ~vec4<u32>(_wgslsmith_div_u32(global0.x, 4294967295u), 15837u, global0.x, ~global0.x)) & ~_wgslsmith_mod_vec4_u32(select(~vec4<u32>(global0.x, 0u, 48757u, global0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 1u, 2244u, global0.x), vec4<u32>(global0.x, global0.x, global0.x, 4294967295u)), vec4<bool>(true, false, true, true)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1891u, global0.x, global0.x), vec4<u32>(global0.x, global0.x, global0.x, 1u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    global0 = arg_1;
    global0 = vec4<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global0.x, arg_1.x), arg_1.zwz), _wgslsmith_dot_vec4_u32(arg_1, _wgslsmith_add_vec4_u32(arg_1, arg_1)), arg_1.x, global0.x);
    global0 = reverseBits(~vec4<u32>(~arg_1.x, _wgslsmith_mult_u32(arg_1.x ^ 1437u, global0.x << (arg_1.x % 32u)), 1u, 37417u));
    var var_0 = vec3<i32>(_wgslsmith_mod_i32(min(abs(0i), -u_input.d) & -_wgslsmith_dot_vec3_i32(vec3<i32>(-37628i, u_input.b.x, u_input.e.x), vec3<i32>(u_input.c.x, u_input.b.x, u_input.b.x)), ~countOneBits(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x)))), i32(-1i) * -(~u_input.d), reverseBits(_wgslsmith_dot_vec2_i32(u_input.b, u_input.c.wx)));
    var_0 = ~u_input.c.wyw;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d)) - 1000f);
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = arg_2;
    let var_1 = 0i;
    global0 = ~vec4<u32>(global0.x, ~select(global0.x, func_3(), u_input.e.x != 1i), 1u ^ ~countOneBits(global0.x), 92603u);
    var_0 = Struct_1(!(!arg_2.a), !vec3<bool>(var_0.b.x, max(u_input.a, u_input.b.x) >= u_input.b.x, (u_input.d | arg_0.x) <= u_input.e.x), _wgslsmith_f_op_f32(select(var_0.d, -424f, select(~63677u, _wgslsmith_add_u32(global0.x, global0.x), var_0.b.x && arg_2.a.x) < abs(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -2268f))), var_0.a.x);
    var var_2 = ~(func_2(-1i).x ^ ~53746u);
    return min(~vec4<u32>(~(~125769u), 11252u, 4294967295u | (global0.x >> (27854u % 32u)), 1u), vec4<u32>(global0.x, ~(global0.x ^ global0.x) | global0.x, func_2(-2872i).x, 8302u));
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    global0 = select(func_5(select(select(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-5335i, 2147483647i), all(arg_0.b)), vec2<i32>(firstLeadingBit(u_input.e.x), -15323i), all(select(vec4<bool>(true, arg_0.a.x, true, arg_0.e), vec4<bool>(false, true, arg_0.a.x, true), vec4<bool>(true, false, arg_0.a.x, true)))), _wgslsmith_f_op_f32(func_4(Struct_1(select(arg_0.b, vec3<bool>(false, arg_0.a.x, arg_0.e), vec3<bool>(arg_0.b.x, false, false)), vec3<bool>(true, true, false), -1288f, arg_0.d, arg_0.a.x), max(func_2(1i), _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, 0u, 73822u), vec4<u32>(23688u, 82899u, global0.x, 64395u))), arg_0)), arg_0), _wgslsmith_add_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(select(vec4<u32>(18865u, 53285u, 4294967295u, global0.x), vec4<u32>(1173u, global0.x, 26428u, 30835u), arg_0.a.x), vec4<u32>(global0.x, global0.x, global0.x, global0.x) ^ vec4<u32>(global0.x, global0.x, 37700u, 1u))), _wgslsmith_div_vec4_u32(select(vec4<u32>(global0.x, 29010u, global0.x, global0.x), ~vec4<u32>(24094u, 0u, 4294967295u, global0.x), select(vec4<bool>(true, arg_0.e, false, arg_0.e), vec4<bool>(false, true, false, arg_0.e), vec4<bool>(arg_0.b.x, true, false, arg_0.b.x))), vec4<u32>(select(1u, global0.x, arg_0.b.x), abs(4294967295u), global0.x, 0u))), true);
    var var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.e, u_input.e), u_input.e);
    var var_1 = u_input.c;
    var var_2 = arg_0;
    var_0 = vec3<i32>(var_1.x, ~(-u_input.b.x), -1i);
    return StorageBuffer(select(firstLeadingBit(global0.zx) << (vec2<u32>(22830u, global0.x) % vec2<u32>(32u)), ~vec2<u32>(global0.x, global0.x), !vec2<bool>(false, arg_0.a.x)) | reverseBits(vec2<u32>(global0.x, reverseBits(12328u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~select(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, global0.x, 12816u, global0.x)), vec4<u32>(66612u, global0.x, 4294967295u, 37084u) << (vec4<u32>(global0.x, global0.x, global0.x, 44263u) % vec4<u32>(32u))), vec4<u32>(~1u, 4294967295u, _wgslsmith_mod_u32(0u, 25719u), 4294967295u), true));
    global0 = var_0;
    var var_1 = true;
    let var_2 = false;
    var_1 = false;
    let x = u_input.a;
    s_output = func_1(Struct_1(!vec3<bool>(var_2, !var_2, false || var_2), vec3<bool>(var_2 | true, var_2, select(false, var_0.x > global0.x, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(371f)) + _wgslsmith_f_op_f32(ceil(-432f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(190f, -1370f) + _wgslsmith_f_op_f32(f32(-1f) * -914f))), -871f, all(vec2<bool>(false, var_2))));
}

