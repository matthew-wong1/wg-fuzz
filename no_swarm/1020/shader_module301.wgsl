struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: u32 = 19012u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> vec4<i32> {
    global0 = 4294967295u;
    global1 = ~4294967295u;
    var var_0 = -(arg_0 >> (~4294967295u % 32u));
    global0 = u_input.d;
    var_0 = max(-arg_0, countOneBits(0i));
    return vec4<i32>(-1i) * -(~(vec4<i32>(arg_0, arg_0, arg_0, u_input.a.x) & -vec4<i32>(u_input.b, u_input.a.x, -1i, 34934i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    global0 = ~3092u;
    return !all(vec4<bool>(select(true, true, false), arg_0.c != arg_0.c, arg_0.c, any(vec2<bool>(arg_0.c, true)))) || arg_0.a;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: i32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = !select(select(vec3<bool>(any(vec3<bool>(true, true, true)), func_3(Struct_1(false, vec2<f32>(716f, -743f), false, arg_3), vec2<f32>(-455f, -655f)), true), vec3<bool>(0i >= arg_2, true, all(vec2<bool>(false, true))), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), arg_3.x <= arg_3.x)), vec3<bool>(true, true, true), all(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true))));
    var var_1 = select(vec3<bool>(false, var_0.x, false), vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, true, false));
    var var_2 = var_1.x;
    var_2 = ~u_input.d <= firstLeadingBit(u_input.d);
    let var_3 = u_input.d;
    return Struct_1(all(vec4<bool>(func_3(Struct_1(false, vec2<f32>(-559f, -225f), true, vec4<u32>(27887u, 1u, arg_3.x, arg_3.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-961f, 835f)))), u_input.d != 14372u, all(select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(var_1.x, true, false, var_0.x), var_1.x)), true)), vec2<f32>(1f, 1f), !var_1.x, select(countOneBits(~vec4<u32>(4294967295u, 23665u, var_3, arg_3.x)), ~vec4<u32>(4940u, arg_3.x | 0u, ~arg_3.x, 1u), select(!(!vec4<bool>(var_1.x, true, var_0.x, true)), !vec4<bool>(var_1.x, var_0.x, var_1.x, var_1.x), var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(abs(u_input.a.x), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-12044i, -1i, 0i, u_input.c.x), -vec4<i32>(-10383i, u_input.a.x, 2147483647i, u_input.c.x)), func_1(-u_input.a.x, Struct_1(true, vec2<f32>(-371f, -953f), false, vec4<u32>(4294967295u, 1u, u_input.d, 48774u)), _wgslsmith_f_op_f32(floor(884f)))), _wgslsmith_dot_vec3_i32(-select(u_input.a, u_input.a, vec3<bool>(true, true, true)), vec3<i32>(~u_input.b, abs(0i), _wgslsmith_div_i32(u_input.c.x, 29964i)))), u_input.a.x, ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d, 0u, 18096u, 0u), ~vec4<u32>(u_input.d, 58258u, u_input.d, u_input.d))));
    let var_1 = var_0.d;
    global0 = 1u;
    global0 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~var_0.d, vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0.d.x, 67568u, u_input.d), vec4<u32>(0u, 1u, 17660u, u_input.d), var_1), var_0.d), var_0.d.x, abs(~1u), 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.d.x, 92000u, 53292u) & ~vec4<u32>(1u, var_1.x, var_0.d.x, 21982u), var_1)), ~(~vec4<u32>(u_input.d, select(1u, 0u, var_0.a), 63687u, _wgslsmith_mod_u32(0u, u_input.d))));
    var var_2 = 1037f;
    var var_3 = func_2(u_input.a.x, ~u_input.c ^ u_input.c, u_input.b | 8738i, ~(~(~(~var_0.d))));
    let var_4 = func_2(reverseBits((firstLeadingBit(u_input.b) << (~var_3.d.x % 32u)) << (u_input.d % 32u)), -(~select(u_input.c & u_input.a.xx, u_input.a.yz << (vec2<u32>(var_3.d.x, var_0.d.x) % vec2<u32>(32u)), var_3.a)), u_input.b, _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.d.x >> (func_2(u_input.b, vec2<i32>(u_input.b, u_input.c.x), -1i, var_3.d).d.x % 32u), var_0.d.x, 34876u, var_1.x), min(~(~vec4<u32>(var_3.d.x, 8378u, 1u, 4294967295u)), ~_wgslsmith_mult_vec4_u32(var_3.d, var_3.d))));
    let var_5 = _wgslsmith_dot_vec2_i32(-u_input.c, -abs(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, 19784i), vec2<i32>(u_input.b, u_input.b))));
    var_2 = _wgslsmith_f_op_f32(-615f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.b.x, 1077f))))), var_4.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_4.b.x * -1729f), -1985f, var_0.b.x)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-503f, -175f, -1489f) - vec3<f32>(var_3.b.x, 474f, var_0.b.x)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-769f, 286f, var_3.b.x), vec3<f32>(265f, var_4.b.x, var_3.b.x), vec3<bool>(var_4.c, true, var_4.c)))), vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(round(var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x))))));
}

