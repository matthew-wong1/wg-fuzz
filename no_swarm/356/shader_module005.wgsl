struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    var var_0 = arg_2.a;
    var var_1 = reverseBits(select(-33297i, -arg_2.c, true));
    let var_2 = Struct_1(u_input.a, arg_2.b, -arg_2.c);
    var var_3 = arg_0.a.x;
    let var_4 = vec2<u32>(arg_0.a.x, _wgslsmith_dot_vec3_u32(~max(arg_0.a.www, arg_0.a.yww), arg_0.a.wyx) | u_input.d);
    return !select(select(vec2<bool>(!arg_3, arg_1), vec2<bool>(arg_1, var_2.c > 45303i), !vec2<bool>(arg_1, arg_3)), !select(select(vec2<bool>(arg_1, true), vec2<bool>(false, arg_1), vec2<bool>(arg_1, false)), select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, false), vec2<bool>(arg_3, arg_1)), u_input.a < 1i), select(!(!vec2<bool>(arg_1, arg_3)), vec2<bool>(arg_0.a.x < 39000u, any(vec2<bool>(true, arg_3))), !(arg_2.a > -1i)));
}

fn func_2() -> i32 {
    global0 = all(select(vec2<bool>(true, 59062u < u_input.d), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)), func_3(Struct_3(~vec4<u32>(u_input.c, 4294967295u, u_input.d, 37997u)), true || (u_input.a <= 2147483647i), Struct_1(_wgslsmith_mod_i32(1i, u_input.a), _wgslsmith_f_op_f32(select(324f, 811f, false)), u_input.a), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true)))));
    global0 = false;
    let var_0 = abs(~_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-22263i, 2147483647i, u_input.a, -2147483647i), select(vec4<i32>(33225i, u_input.a, 35394i, u_input.a), vec4<i32>(-1i, u_input.b.x, 1i, u_input.b.x), vec4<bool>(true, true, false, false)), vec4<i32>(u_input.a, u_input.b.x, 0i, 27748i)), -min(vec4<i32>(-1i, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, 2147483647i))));
    var var_1 = Struct_2(u_input.d, ~1u, Struct_1(-var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-155f + 1727f))), u_input.b.x << (0u % 32u)), u_input.d | 4294967295u, Struct_1(35987i << ((abs(u_input.c) ^ 63706u) % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1729f, 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -141f)))), -36316i));
    let var_2 = var_1.c;
    return var_1.c.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>) -> bool {
    global0 = u_input.b.x != 66309i;
    global0 = !(all(vec3<bool>(732f > arg_0.x, true, true)) || (u_input.c <= ~7083u));
    global0 = all(vec3<bool>(true, true, true)) & true;
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(~2147483647i, -8746i << (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, u_input.c, u_input.d, u_input.d)), max(vec4<u32>(167u, u_input.d, u_input.c, u_input.c), vec4<u32>(34914u, u_input.d, 47314u, u_input.c))) % 32u)), _wgslsmith_add_i32(func_2(), abs(u_input.b.x)), arg_1.x);
    global0 = !func_3(Struct_3(~firstLeadingBit(vec4<u32>(u_input.c, 47404u, 1u, u_input.c))), !any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true)), Struct_1(max(u_input.b.x, var_0.x), arg_0.x, func_2() | var_0.x), all(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)))).x;
    return all(select(vec4<bool>(-10152i < _wgslsmith_sub_i32(arg_1.x, arg_1.x), true, all(vec3<bool>(false, false, true)), (u_input.c <= u_input.c) | all(vec4<bool>(false, true, false, true))), vec4<bool>(true, false, _wgslsmith_dot_vec2_i32(var_0.xy, vec2<i32>(u_input.a, arg_1.x)) > -55148i, arg_1.x == -2147483647i), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global0 = true;
    var var_0 = Struct_3(_wgslsmith_div_vec4_u32((countOneBits(vec4<u32>(1u, u_input.c, 74633u, 4294967295u)) >> (countOneBits(vec4<u32>(u_input.c, u_input.d, 0u, u_input.c)) % vec4<u32>(32u))) & ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c, 13286u, u_input.c), vec4<u32>(u_input.c, u_input.c, 28549u, u_input.d)), vec4<u32>(u_input.c & u_input.d, ~(~43948u), select(1u, 39026u, func_1(vec2<f32>(-242f, -248f), vec2<i32>(u_input.a, u_input.b.x))), 4294967295u)));
    global0 = true;
    let var_1 = Struct_1(min(-2147483647i, max(~(-69757i), -1i)) >> (~(~firstLeadingBit(u_input.d)) % 32u), -443f, ~_wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.a, u_input.b.x, 0i, u_input.b.x)), -vec4<i32>(56392i, -57415i, 0i, -57263i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -1416f))), var_1.b, var_1.b, var_1.b), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-548f, -907f, var_1.b, var_1.b), vec4<f32>(var_1.b, -1903f, 418f, -132f)))))))), _wgslsmith_f_op_f32(abs(var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(round(var_1.b))));
}

