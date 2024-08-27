struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_4;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<u32> {
    global0 = ~_wgslsmith_dot_vec3_u32(firstTrailingBit(min(~vec3<u32>(460u, arg_0.a.x, 91308u), u_input.e)), min(_wgslsmith_add_vec3_u32(firstTrailingBit(u_input.e), firstLeadingBit(vec3<u32>(1u, 1u, 1u))), u_input.e));
    let var_0 = (max(56936u, (4294967295u ^ arg_1) >> ((global1.a.x >> (42761u % 32u)) % 32u)) ^ 1u) & 1u;
    var var_1 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, u_input.c.x < 31335i, true, true), all(vec4<bool>(false, true, false, true))), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec2<bool>(false, true)), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), true), false), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false)), vec4<bool>(true, true, true, true), true));
    return reverseBits(global1.a);
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_mult_vec4_u32(~select(global1.a, vec4<u32>(countOneBits(0u), 4294967295u, _wgslsmith_clamp_u32(arg_0, 55633u, u_input.d), _wgslsmith_div_u32(u_input.b, 36105u)), vec4<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, false, false)), true, true)), abs(~(select(global1.a, global1.a, vec4<bool>(true, false, true, false)) & func_3(Struct_1(global1.a.wy), 9852u))));
    global0 = max(0u, 39347u);
    global1 = Struct_4(global1.a);
    global1 = Struct_4(global1.a);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1486f)) * _wgslsmith_f_op_f32(f32(-1f) * -1229f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(435f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-257f))))) - _wgslsmith_f_op_f32(-902f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(409f))))));
    return _wgslsmith_mod_u32(abs(arg_0), ~var_0.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: f32, arg_3: bool) -> bool {
    global1 = Struct_4(~vec4<u32>(~global1.a.x, 13616u, u_input.d, ~1u) | vec4<u32>(1u, abs(firstLeadingBit(global1.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.e.x, 92687u), firstTrailingBit(vec4<u32>(u_input.e.x, global1.a.x, global1.a.x, global1.a.x))), 45242u));
    global0 = _wgslsmith_mult_u32(abs(global1.a.x), min(_wgslsmith_mod_u32(u_input.d, ~func_2(4294967295u)), ~(~_wgslsmith_add_u32(21557u, u_input.d))));
    var var_0 = select(select(select(select(vec4<bool>(false, false, arg_3, true), vec4<bool>(arg_1.x, arg_3, arg_1.x, arg_1.x), select(vec4<bool>(arg_3, arg_3, arg_3, true), vec4<bool>(arg_3, false, arg_1.x, arg_1.x), true)), vec4<bool>(!arg_1.x, u_input.c.x <= u_input.c.x, u_input.c.x != u_input.c.x, arg_1.x), all(select(vec3<bool>(true, true, arg_1.x), vec3<bool>(arg_1.x, true, arg_3), vec3<bool>(arg_3, arg_3, true)))), vec4<bool>(all(vec2<bool>(false, false)), true, any(arg_1), true), true), vec4<bool>(true, true, true, true), !select(select(vec4<bool>(arg_1.x, true, false, true), vec4<bool>(arg_1.x, arg_1.x, arg_3, arg_1.x), arg_3 & arg_3), vec4<bool>(true, arg_1.x, any(vec4<bool>(true, arg_3, arg_3, false)), true), vec4<bool>(arg_1.x, true, true, false)));
    global1 = Struct_4(firstLeadingBit(~(~(~global1.a))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1483f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - arg_2) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(2204f)))))));
    return !arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, any(select(vec4<bool>(func_1(vec2<f32>(253f, 571f), vec2<bool>(false, true), 738f, false), true, any(vec4<bool>(false, true, true, true)), global1.a.x < 0u), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false), true)), all(select(vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(true, true), false)), false);
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-2147483647i, u_input.a, 0i, u_input.a)), vec4<i32>(-37209i, u_input.a, 2147483647i, u_input.c.x))), vec3<i32>(~2147483647i, -u_input.c.x, u_input.a) >> (~firstTrailingBit(~vec3<u32>(global1.a.x, global1.a.x, 4294967295u)) % vec3<u32>(32u)), -715f, vec3<u32>(global1.a.x, ~abs(41715u), global1.a.x), -abs(~_wgslsmith_div_i32(-40835i, 18991i)));
}

