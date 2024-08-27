struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<bool> {
    global0 = array<Struct_1, 4>();
    let var_0 = global0[_wgslsmith_index_u32(37072u, 4u)];
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(u_input.b ^ 4294967295u), 21356u) << (~(_wgslsmith_mult_u32(~u_input.b, 4294967295u) << (_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b, 82317u), firstTrailingBit(u_input.b)) % 32u)) % 32u), 4u)];
    global0 = array<Struct_1, 4>();
    var var_2 = countOneBits(min(vec2<u32>(u_input.b, ~u_input.b), ~vec2<u32>(93375u, 7459u)) << (_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(0u, 1u)), vec2<u32>(u_input.b, 43236u), abs(vec2<u32>(0u, u_input.b)) & _wgslsmith_mod_vec2_u32(vec2<u32>(27596u, 0u), vec2<u32>(4294967295u, 1u))) % vec2<u32>(32u)));
    return !select(!select(vec2<bool>(false, true), !vec2<bool>(var_1.c, true), vec2<bool>(var_1.b, true)), !vec2<bool>(true, all(vec4<bool>(false, var_1.c, var_1.b, var_1.c))), any(!select(vec4<bool>(false, var_1.c, false, var_1.b), vec4<bool>(var_1.c, var_1.c, var_0.c, var_1.c), vec4<bool>(false, var_0.b, var_0.c, var_1.c))));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_0 = select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 2147483647i, reverseBits(arg_0)), ~vec3<i32>(2147483647i, 42781i << (u_input.b % 32u), u_input.a)), ~vec3<i32>(1i, ~u_input.a, ~(-2147483647i)) | (vec3<i32>(-1i) * -(~vec3<i32>(33504i, u_input.a, 1i))), any(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), func_3())));
    let var_1 = vec2<bool>(!all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), false)), false);
    let var_2 = ~1i;
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(965f, 1309f) - vec2<f32>(-1000f, -488f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-650f, -724f) + vec2<f32>(840f, -248f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1217f, -1262f))))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec2<f32> {
    global0 = array<Struct_1, 4>();
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, 800f), vec2<f32>(-692f, arg_1))), _wgslsmith_f_op_vec2_f32(func_2(arg_0.a.x)), arg_1 < -1334f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, -1098f)))))), vec2<f32>(-1318f, _wgslsmith_f_op_f32(1647f * arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    let var_0 = firstLeadingBit(1i) & -(u_input.a << (~_wgslsmith_div_u32(0u, u_input.b) % 32u));
    global0 = array<Struct_1, 4>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 114309u), vec2<u32>(0u, 45071u)), 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1266f) + _wgslsmith_f_op_f32(floor(245f))))) * vec2<f32>(445f, 1f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1118f, -1140f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-856f, -470f) - vec2<f32>(1114f, -1000f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1369f, 101f))), vec2<f32>(1000f, 1000f)))))));
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, u_input.a, -2147483647i), vec3<i32>(var_0, -2147483647i, -37565i) & vec3<i32>(51754i, 12538i, var_0)), min(-u_input.a, 2147483647i))), _wgslsmith_mod_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, var_0, 50426i) ^ vec3<i32>(var_0, u_input.a, -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 0i, 1282i), vec3<i32>(var_0, var_0, var_0))), abs(abs(vec3<i32>(-2147483647i, var_0, -44238i) ^ vec3<i32>(u_input.a, var_0, var_0)))));
    var_2 = vec3<i32>(_wgslsmith_mult_i32(abs(309i), var_2.x), firstLeadingBit(u_input.a) & (_wgslsmith_div_i32(~var_2.x, min(-35261i, -28229i)) >> (_wgslsmith_div_u32(17944u ^ u_input.b, _wgslsmith_sub_u32(19275u, u_input.b)) % 32u)), var_0);
    let var_3 = vec2<f32>(-1506f, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(var_1.x * 212f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.b, ~(~u_input.b)), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b | 4294967295u, min(u_input.b, 2980u)), abs(~vec2<u32>(u_input.b, u_input.b)))), -(~(-vec3<i32>(-41378i, -6431i, var_2.x)) & (vec3<i32>(u_input.a, var_2.x, var_2.x) & vec3<i32>(-14306i, var_0, var_2.x))));
}

