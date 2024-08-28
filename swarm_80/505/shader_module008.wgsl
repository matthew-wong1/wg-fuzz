struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<i32>) -> bool {
    global0 = array<vec2<u32>, 28>();
    let var_0 = select(!select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(select(true, true, true), all(vec4<bool>(true, false, false, true)), true, true), true), vec4<bool>(all(vec3<bool>(true, all(vec2<bool>(true, false)), true)), any(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false)), false, true || !(arg_0.x < arg_1.x)), !(!(max(arg_0.x, -2504i) < (arg_0.x & u_input.b))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(295f)) - _wgslsmith_f_op_f32(f32(-1f) * -1378f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-457f - 1000f))))), !var_0.x, var_0);
    var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-516f)))), !var_0.x, !(!select(select(vec4<bool>(true, var_1.c.x, true, false), var_1.c, var_1.c.x), vec4<bool>(var_0.x, var_0.x, false, var_1.c.x), true)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(sign(-152f)), var_1.b, var_0);
    return !var_2.b;
}

fn func_2() -> vec4<bool> {
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    let var_0 = vec3<bool>(select(any(vec4<bool>(true, false, true, true)), any(vec2<bool>(any(vec4<bool>(true, true, true, true)), 0u < u_input.a)), 1u < ~_wgslsmith_sub_u32(u_input.a, 0u)), true, any(vec3<bool>(_wgslsmith_f_op_f32(select(-114f, -456f, true)) < -139f, func_3(vec3<i32>(2147483647i, u_input.b, -59613i) << (vec3<u32>(u_input.a, u_input.d, u_input.c) % vec3<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 12162i, -1i, u_input.b), vec4<i32>(-1i, 1i, 6775i, -27027i))), false)));
    let var_1 = Struct_1(-1098f, select(false, var_0.x, var_0.x), !vec4<bool>(true, all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, true, var_0.x), true)), var_0.x, false));
    let var_2 = Struct_1(_wgslsmith_div_f32(106f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * 1000f)) + var_1.a)), true, select(select(select(vec4<bool>(var_1.b, true, var_1.c.x, false), !var_1.c, vec4<bool>(var_1.c.x, var_0.x, var_0.x, true)), !vec4<bool>(false, false, false, var_1.b), !(var_1.a != var_1.a)), var_1.c, vec4<bool>(var_0.x, var_0.x, var_1.b, !(!var_1.c.x))));
    return select(vec4<bool>(false, var_1.b, true, select(all(select(vec2<bool>(var_2.c.x, var_1.c.x), vec2<bool>(var_2.c.x, var_0.x), var_1.c.x)), var_2.c.x, true)), var_2.c, false);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: vec2<i32>) -> u32 {
    var var_0 = vec3<u32>(arg_0, _wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, 0u, u_input.d) << (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, arg_0), vec3<u32>(0u, u_input.d, 29526u)) % vec3<u32>(32u))), ~reverseBits(vec3<u32>(57849u, 21269u, 15717u)) << (vec3<u32>(u_input.c | u_input.c, 70418u, _wgslsmith_mult_u32(u_input.a, 1u)) % vec3<u32>(32u))), 1u);
    let var_1 = Struct_1(arg_1, all(vec3<bool>(false, select(true, any(vec2<bool>(true, true)), true), false)), select(!vec4<bool>(true, any(vec2<bool>(false, true)), true, true), select(!func_2(), vec4<bool>(true, false, false, true), select(any(vec4<bool>(false, false, true, true)), false, true)), vec4<bool>(true, true, true, true)));
    var_0 = vec3<u32>(~u_input.c, ~_wgslsmith_sub_u32(reverseBits(_wgslsmith_clamp_u32(var_0.x, 16547u, 1u)), ~var_0.x), 4294967295u);
    var_0 = firstTrailingBit(~(~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, u_input.a, arg_0), vec3<u32>(u_input.c, arg_0, var_0.x))));
    let var_2 = var_1.c.x;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(479f - -335f), _wgslsmith_div_f32(-293f, 187f)))) * -2367f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1374f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1075f))));
    var var_1 = select(true, all(select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, false, true))), ~40532u != u_input.a)), true);
    let var_2 = _wgslsmith_clamp_u32(u_input.c, ~_wgslsmith_mult_u32(1u, firstTrailingBit(u_input.c)) & ~min(func_1(32369u, -474f, 20661i, vec2<i32>(u_input.b, u_input.b)), firstLeadingBit(u_input.c)), 0u);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1684f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(457f, -1766f)))))), func_2().x && (func_2().x && true), vec4<bool>(true, -1i > u_input.b, true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))) || false));
    var_1 = !var_3.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(u_input.a, 28u)], -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)), u_input.b) >> (global0[_wgslsmith_index_u32(1u, 28u)] % vec2<u32>(32u)), max(vec2<u32>(_wgslsmith_sub_u32(0u, var_2), var_2 ^ 38360u), countOneBits(global0[_wgslsmith_index_u32(4294967295u, 28u)])) ^ ~firstTrailingBit(vec2<u32>(u_input.a, var_2)), vec2<i32>(_wgslsmith_add_i32(~_wgslsmith_div_i32(2147483647i, u_input.b), -22329i), _wgslsmith_div_i32(_wgslsmith_mult_i32(0i, u_input.b), u_input.b)), vec3<i32>(~(~firstTrailingBit(-11509i)), (-52239i & -u_input.b) << (u_input.a % 32u), -(2147483647i | u_input.b)));
}

