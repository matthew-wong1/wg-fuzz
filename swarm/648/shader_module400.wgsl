struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> bool {
    var var_0 = arg_1;
    var_0 = arg_1;
    var_0 = arg_1;
    var_0 = Struct_1(!(!select(arg_1.a, arg_1.a, arg_1.a)));
    let var_1 = ~7166u;
    return var_0.a.x;
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: u32) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(vec3<bool>(false, false, !arg_0)), select(~_wgslsmith_add_i32(-u_input.a, 1i), abs(-u_input.a), false), vec2<u32>(~0u, _wgslsmith_mod_u32(1u, select(min(34386u, 4294967295u), _wgslsmith_div_u32(u_input.b, u_input.b), true))), max(vec4<u32>(42122u, ~(~8890u), 1u, 28140u), ~max(vec4<u32>(u_input.b, u_input.b, 30535u, 4346u) >> (vec4<u32>(u_input.b, u_input.b, 83203u, arg_2.x) % vec4<u32>(32u)), vec4<u32>(u_input.b, arg_2.x, 14653u, 4294967295u))));
    let var_1 = Struct_3(vec2<bool>(var_0.a.a.x, (4294967295u << (var_0.d.x % 32u)) <= ~(~1u)), u_input.b << (~_wgslsmith_dot_vec4_u32(var_0.d, ~var_0.d) % 32u));
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_mult_u32(u_input.b, _wgslsmith_sub_u32((arg_3 | 4294967295u) & arg_2.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, var_1.b), ~17241u)) << (~(~(var_1.b >> (var_0.d.x % 32u))) % 32u));
    let var_4 = var_0.b;
    return vec4<bool>(arg_1.x > _wgslsmith_f_op_f32(-arg_1.x), any(var_0.a.a), !select(var_1.a.x, 1u < arg_3, all(vec2<bool>(true, true))) | true, true);
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    let var_0 = any(!vec3<bool>(true, !(!arg_2.a.x), arg_3.a.a.x));
    let var_1 = !(!vec2<bool>(arg_3.a.a.x, arg_2.a.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-403f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_0))) - arg_0));
    let var_3 = select(select(select(vec4<bool>(!var_0, var_0, false, arg_2.a.x), !vec4<bool>(true, arg_2.a.x, false, arg_2.a.x), !var_1.x), select(!select(vec4<bool>(true, arg_2.a.x, true, true), vec4<bool>(arg_3.a.a.x, arg_2.a.x, true, var_1.x), arg_3.a.a.x), vec4<bool>(true, true, true, true), vec4<bool>(all(arg_3.a.a), arg_3.a.a.x && var_0, u_input.a >= 1i, select(arg_2.a.x, false, true))), !((false & arg_3.a.a.x) & select(arg_3.a.a.x, arg_2.a.x, var_0))), func_3(func_2(_wgslsmith_f_op_f32(848f * _wgslsmith_f_op_f32(floor(206f))), arg_3.a), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-872f, arg_0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))), ~(~_wgslsmith_div_vec3_u32(arg_3.d.yyw, arg_3.d.zww)), firstTrailingBit(4294967295u)), _wgslsmith_mult_u32(max(_wgslsmith_mult_u32(u_input.b, 4294967295u), u_input.b), arg_3.c.x) > ~_wgslsmith_dot_vec2_u32(arg_3.c, arg_3.c));
    var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-434f + arg_0)));
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec2<u32>(u_input.b, min(~(~49738u), _wgslsmith_add_u32(~u_input.b, _wgslsmith_mult_u32(u_input.b, 0u)))), _wgslsmith_mod_vec2_u32(vec2<u32>(func_1(_wgslsmith_f_op_f32(select(-1213f, 850f, true)), _wgslsmith_div_vec4_i32(vec4<i32>(53655i, 1i, -54184i, -1563i), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)), Struct_3(vec2<bool>(true, true), u_input.b), Struct_2(Struct_1(vec3<bool>(true, false, false)), -1i, vec2<u32>(u_input.b, 0u), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b))), (0u >> (u_input.b % 32u)) | _wgslsmith_clamp_u32(u_input.b, u_input.b, 1u)), _wgslsmith_mult_vec2_u32(~(vec2<u32>(u_input.b, 0u) >> (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(77222u, u_input.b), vec2<u32>(51980u, u_input.b)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-441f * _wgslsmith_f_op_f32(297f - 344f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32((_wgslsmith_add_i32(-3700i, u_input.a) & 48615i) & -1i, -u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(925i, -2147483647i, 1i), ~firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 22075i))) << (vec3<u32>(~var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.b, 0u, 61348u), vec4<u32>(1u, var_0.x, 1u, 66882u)), _wgslsmith_mod_u32(u_input.b, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_sub_u32(min(var_0.x, 1u | var_0.x), var_0.x), _wgslsmith_f_op_f32(sign(var_1)), ~(~reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -9511i, -2147483647i), vec4<i32>(0i, u_input.a, 37281i, -1i)))));
}

