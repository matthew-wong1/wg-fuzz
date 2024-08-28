struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    global0 = arg_0.a.x;
    global0 = !all(select(vec3<bool>(any(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)), false, !arg_0.a.x), arg_0.a, select(arg_0.a, arg_0.a, true)));
    global0 = true;
    var var_0 = -2147483647i;
    let var_1 = !arg_0.a.x;
    return !(!select(arg_0.a, vec3<bool>(true, true, true), arg_0.a));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> vec4<u32> {
    let var_0 = max(vec3<u32>(min(select(arg_2.a.x, 20625u, arg_0.c.x) >> (arg_2.a.x % 32u), 27601u), 93758u, ~select(arg_1, _wgslsmith_div_u32(1u, arg_0.a.x), true)), arg_2.a.yyy >> (_wgslsmith_clamp_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(arg_0.a.xyx, arg_0.a.wyx)), arg_2.a.zxw, ~vec3<u32>(11303u, 0u, 4294967295u)) % vec3<u32>(32u)));
    var var_1 = ~(~firstLeadingBit(~_wgslsmith_add_vec2_u32(arg_0.a.xx, vec2<u32>(4294967295u, var_0.x))));
    let var_2 = Struct_3(select(!(!func_3(Struct_3(arg_0.c.www))), func_3(Struct_3(arg_0.c.zwy)), !func_3(Struct_3(arg_0.c.yww))));
    global0 = false;
    var var_3 = _wgslsmith_add_u32(1u ^ firstTrailingBit(4294967295u), 0u);
    return _wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.x, var_1.x, 4294967295u), vec4<u32>(1u, 0u, arg_0.a.x, 16330u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 10183u, 1u, var_0.x), countOneBits(arg_2.a), firstTrailingBit(vec4<u32>(0u, arg_1, 4294967295u, 79230u))))), ~arg_2.a);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = 4294967295u;
    var_0 = 21026u;
    global0 = false;
    let var_1 = Struct_1(func_2(Struct_1(arg_3.a >> (_wgslsmith_add_vec4_u32(arg_3.a, arg_3.a) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(arg_3.b + _wgslsmith_f_op_vec2_f32(exp2(arg_3.b))), !vec4<bool>(arg_3.c.x, arg_3.c.x, true, arg_3.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.b.x)) * _wgslsmith_f_op_f32(step(717f, arg_3.b.x)))), max(24827u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), arg_3.a.yww) % 32u), arg_3.a.x), arg_3, arg_2), vec2<f32>(arg_3.b.x, arg_3.b.x), select(vec4<bool>(false, true, !(u_input.a.x != -1i), !arg_3.c.x), arg_3.c, vec4<bool>(!arg_3.c.x, arg_3.c.x, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.d))));
    var_0 = var_1.a.x;
    return _wgslsmith_div_u32(~abs(_wgslsmith_mod_u32(~98805u, 19690u ^ arg_3.a.x)), var_1.a.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = 1368f;
    let var_1 = Struct_1(reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 36878u, arg_0.x, arg_0.x), vec4<u32>(74994u, arg_0.x, arg_0.x, 1u))) | select(~vec4<u32>(arg_0.x, arg_0.x, 26302u, 10189u), ~vec4<u32>(arg_0.x, 0u, arg_0.x, 3604u), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -829f), _wgslsmith_f_op_f32(345f * 288f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1265f, 1756f)) + vec2<f32>(-1827f, -263f))))), vec4<bool>(true, false, any(vec2<bool>(all(vec2<bool>(true, true)), true)), true), -291f);
    global0 = false;
    var_0 = _wgslsmith_div_f32(-1364f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.d))));
    return Struct_1(func_2(var_1, _wgslsmith_div_u32(49585u & arg_0.x, 116905u), var_1, _wgslsmith_add_i32(0i, _wgslsmith_mod_i32(u_input.a.x << (arg_0.x % 32u), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)))), var_1.b, select(vec4<bool>(!var_1.c.x, arg_1.a.x, !var_1.c.x, true), !var_1.c, -851f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.d, 599f)) + _wgslsmith_f_op_f32(-1615f - _wgslsmith_f_op_f32(-var_1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 16900u), vec4<u32>(1u, 4294967295u, 0u, 0u))) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(7597u | ~select(87217u, 53690u, false), 0u, ~abs(4294967295u), 73925u));
    global0 = true;
    let var_1 = countOneBits(_wgslsmith_mult_vec2_i32(~_wgslsmith_div_vec2_i32(-u_input.a.wx, vec2<i32>(1i, -1i) | vec2<i32>(22778i, u_input.a.x)), u_input.a.zy));
    let var_2 = func_4(vec3<u32>(var_0.x >> (var_0.x % 32u), ~func_1(~var_0.yxy, _wgslsmith_div_f32(-437f, -702f), u_input.a.x | 2147483647i, Struct_1(vec4<u32>(37518u, var_0.x, var_0.x, var_0.x), vec2<f32>(-1880f, 471f), vec4<bool>(false, false, true, true), -1119f)), var_0.x), Struct_3(vec3<bool>(true, true, true)));
    var var_3 = Struct_3(select(func_4(vec3<u32>(var_0.x, ~43439u, 4294967295u), Struct_3(!vec3<bool>(true, var_2.c.x, true))).c.xzw, !var_2.c.xwy, true));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(_wgslsmith_sub_u32(var_2.a.x, var_2.a.x), 24535u & var_0.x, 22628u)) ^ (~var_2.a.xzz | _wgslsmith_div_vec3_u32(~var_0.yzz, vec3<u32>(16060u, var_2.a.x, var_0.x))));
}

