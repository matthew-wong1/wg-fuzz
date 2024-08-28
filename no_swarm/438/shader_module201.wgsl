struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<i32>(2147483647i, -1431i, i32(-2147483648), 2147483647i), vec2<bool>(true, true), vec2<f32>(-959f, -818f), vec3<u32>(4294967295u, 62776u, 0u)), vec3<u32>(54351u, 0u, 55594u));

var<private> global1: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    var var_0 = true | global0.a.b.x;
    return global1.a.c.x;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> vec2<bool> {
    global0 = Struct_2(Struct_1(firstTrailingBit(reverseBits(vec4<i32>(u_input.a.x, arg_1.a.x, -2591i, arg_1.a.x))), !vec2<bool>(6647u == global0.a.d.x, true), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2373f, -2226f)), _wgslsmith_f_op_vec2_f32(select(arg_1.c, vec2<f32>(-837f, arg_3.x), arg_0.x)))))), vec3<u32>(abs(global0.a.d.x), 0u, ~arg_1.d.x)), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(global0.a.d.x, arg_1.d.x, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 34987u, global0.b.x), ~global1.b)));
    var var_0 = global0.a.b.x;
    return select(select(!select(!global0.a.b, arg_1.b, !global0.a.b), !(!vec2<bool>(arg_1.b.x, arg_2)), arg_1.b), vec2<bool>(arg_1.b.x, true), global1.a.b.x);
}

fn func_2(arg_0: u32, arg_1: f32) -> i32 {
    var var_0 = Struct_2(Struct_1(global1.a.a, select(global0.a.b, select(select(global0.a.b, global0.a.b, global1.a.b.x), select(global1.a.b, vec2<bool>(false, false), global1.a.b.x), !global1.a.b), func_3(select(vec4<bool>(global0.a.b.x, true, false, global0.a.b.x), vec4<bool>(global1.a.b.x, true, global0.a.b.x, true), global1.a.b.x), global0.a, !global0.a.b.x, vec3<f32>(global0.a.c.x, arg_1, -1168f))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-664f, global0.a.c.x, global0.a.b.x)))), _wgslsmith_f_op_f32(min(270f, -1508f))), max(vec3<u32>(_wgslsmith_clamp_u32(u_input.c, 10047u, 1u), arg_0 | global1.b.x, _wgslsmith_div_u32(global1.b.x, global1.a.d.x)), u_input.d.wzy)), vec3<u32>(0u, _wgslsmith_sub_u32(~1u, u_input.c), _wgslsmith_mult_u32(_wgslsmith_mult_u32(global0.b.x, global0.a.d.x), 1u)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(~reverseBits(var_0.a.a), -select(vec4<i32>(u_input.b.x, global0.a.a.x, global1.a.a.x, -1i), vec4<i32>(-1i, -1i, -47772i, global1.a.a.x), vec4<bool>(true, true, false, var_0.a.b.x)), _wgslsmith_div_vec4_i32(global0.a.a << (vec4<u32>(var_0.b.x, 0u, var_0.a.d.x, global1.b.x) % vec4<u32>(32u)), countOneBits(vec4<i32>(-5052i, 12197i, -51970i, var_0.a.a.x)))), vec2<bool>(true, !(global1.a.c.x < 1384f)), global1.a.c, countOneBits(min(~vec3<u32>(var_0.a.d.x, arg_0, arg_0), vec3<u32>(1u, 6570u, global1.b.x)))), vec3<u32>(arg_0, _wgslsmith_add_u32(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, 1u, 1u), vec3<u32>(global0.b.x, var_0.b.x, 45529u)), ~global0.b.x)), reverseBits(28500u)));
    global0 = Struct_2(var_1.a, max(u_input.d.wxy, min(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(25409u, 4294967295u, 1u)), vec3<u32>(arg_0, u_input.c, 34903u) >> (vec3<u32>(var_1.a.d.x, 4294967295u, 68044u) % vec3<u32>(32u)), u_input.d.wyx ^ var_1.b), u_input.d.wxw << (firstTrailingBit(vec3<u32>(19949u, arg_0, 1u)) % vec3<u32>(32u)))));
    global0 = Struct_2(Struct_1(var_0.a.a, !select(global0.a.b, select(global1.a.b, vec2<bool>(var_0.a.b.x, global0.a.b.x), true), !vec2<bool>(global0.a.b.x, true)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(165f, arg_1))))), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(4294967295u, 61465u, var_0.b.x)), global0.b)), vec3<u32>(~var_1.b.x, countOneBits(_wgslsmith_div_u32(26105u, 6734u)), 0u) >> (vec3<u32>(~global1.b.x, select(~var_0.a.d.x, _wgslsmith_mod_u32(4294967295u, global1.a.d.x), true | global1.a.b.x), ~u_input.c) % vec3<u32>(32u)));
    var_0 = Struct_2(Struct_1(var_0.a.a, global1.a.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1898f, global0.a.c.x) - vec2<f32>(1686f, global0.a.c.x)), vec2<f32>(_wgslsmith_f_op_f32(sign(global0.a.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_sub_vec3_u32((vec3<u32>(1u, var_0.a.d.x, var_0.a.d.x) | global0.b) | ~vec3<u32>(global1.a.d.x, 4294967295u, 40384u), ~(u_input.d.wzw << (global0.b % vec3<u32>(32u))))), ~_wgslsmith_mod_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(global1.b, u_input.d.wwz)), ~(~vec3<u32>(var_0.b.x, 3770u, 20634u))));
    return -2386i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(func_2(~5168u, _wgslsmith_f_op_f32(func_1(vec4<f32>(global0.a.c.x, global1.a.c.x, 332f, global0.a.c.x), vec2<i32>(-1i, global1.a.a.x), true))) & -1i, 30887i, max(_wgslsmith_dot_vec2_i32(-vec2<i32>(global1.a.a.x, 5716i), vec2<i32>(2147483647i, global1.a.a.x)), 2147483647i));
    global0 = Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -26603i, u_input.b.x, 1i) & vec4<i32>(global0.a.a.x, var_0.x, global0.a.a.x, -49979i), ~global0.a.a), vec2<bool>(!all(vec2<bool>(global0.a.b.x, false)), !(global1.a.c.x != global1.a.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.a.c.x, global0.a.c.x))), _wgslsmith_f_op_vec2_f32(ceil(global1.a.c)), global0.a.b.x))), abs(~global1.b)), firstTrailingBit(select(vec3<u32>(1u, firstTrailingBit(0u), 63226u), abs(global0.b), vec3<bool>(all(vec3<bool>(global0.a.b.x, false, global1.a.b.x)), true, global1.a.b.x))));
    global1 = Struct_2(Struct_1(firstLeadingBit(global1.a.a), !vec2<bool>(all(global0.a.b), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.c + global0.a.c) * _wgslsmith_f_op_vec2_f32(floor(global1.a.c)))), ~(vec3<u32>(global0.a.d.x, global1.b.x, 91919u) << (_wgslsmith_clamp_vec3_u32(global1.b, global1.a.d, vec3<u32>(global0.b.x, global0.a.d.x, global0.a.d.x)) % vec3<u32>(32u)))), vec3<u32>(27660u, 19632u, ~firstTrailingBit(global1.a.d.x)));
    var var_1 = 296f;
    var var_2 = global0.a;
    let var_3 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(global0.a.a.xxy), vec3<i32>(u_input.a.x, 1i, -(~var_0.x)), ((vec3<i32>(-1i) * -vec3<i32>(0i, 17549i, -80202i)) ^ max(select(global1.a.a.wyw, var_0, var_2.b.x), vec3<i32>(var_0.x, -1i, global1.a.a.x))) | _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.a.x, -1i, 2147483647i), ~select(vec3<i32>(-27219i, -28291i, -1i), var_2.a.xxw, global1.a.b.x)));
    var var_4 = -37806i;
    let var_5 = !(!global0.a.b);
    var var_6 = var_3.yz >> (global1.a.d.yx % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(u_input.a.x, global1.a.a.x), vec4<u32>(global1.a.d.x, var_2.d.x, min(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(global0.a.d.x, 1u, 4294967295u, global1.a.d.x)), u_input.d.x), firstLeadingBit(1u)) & max(max(vec4<u32>(34096u, 30139u, global1.b.x, 0u), vec4<u32>(1u, 18875u, 16867u, global0.a.d.x)), reverseBits(vec4<u32>(11760u, global0.a.d.x, 10716u, 0u))), _wgslsmith_clamp_vec2_i32(~var_0.yz, vec2<i32>(-var_3.x, var_6.x), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -38946i) << (global0.a.d.zy % vec2<u32>(32u)), var_0.zx) ^ vec2<i32>(64030i, -2147483647i)), -_wgslsmith_add_i32(-global1.a.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(41399i, u_input.a.x, global1.a.a.x, global1.a.a.x), vec4<i32>(10789i, var_0.x, -1i, var_0.x))), ~func_2(_wgslsmith_div_u32(46791u, var_2.d.x ^ 47632u), _wgslsmith_f_op_f32(abs(583f))));
}

