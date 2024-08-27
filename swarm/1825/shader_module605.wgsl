struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<f32> = vec2<f32>(1196f, -182f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<bool>) -> bool {
    global0 = Struct_1(max(max(reverseBits(~vec2<u32>(11595u, 0u)), arg_1.yx), arg_1.yx), countOneBits(2147483647i), _wgslsmith_mod_vec4_i32(min(-_wgslsmith_add_vec4_i32(global0.c, global0.c), -vec4<i32>(global0.c.x, -59116i, u_input.a.x, -1i) & _wgslsmith_div_vec4_i32(global0.c, global0.c)), _wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(-1i), max(-27942i, -2147483647i), _wgslsmith_add_i32(-1i, -1i), global0.b), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.x, 22933i, 0i), u_input.a), u_input.a.x, -1i, u_input.a.x >> (global0.a.x % 32u)))), arg_2.x, true);
    global0 = Struct_1(vec2<u32>(~(~(~arg_1.x)), 4294967295u), ~_wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, 1i)), -2147483647i), -(~_wgslsmith_div_vec4_i32(vec4<i32>(25787i, u_input.a.x, global0.c.x, 2147483647i), _wgslsmith_div_vec4_i32(global0.c, vec4<i32>(-2147483647i, 46613i, 1i, global0.c.x)))), true, arg_2.x);
    global0 = Struct_1(global0.a, reverseBits(_wgslsmith_mult_i32(~(-1771i & global0.c.x), _wgslsmith_sub_i32(u_input.a.x, max(1i, 33303i)))), vec4<i32>(_wgslsmith_div_i32(global0.c.x, u_input.a.x), _wgslsmith_mod_i32(0i, min(_wgslsmith_add_i32(0i, global0.c.x), 0i)), global0.c.x, -_wgslsmith_clamp_i32(global0.b, ~2147483647i, 1650i)), global1.x >= -481f, arg_2.x);
    var var_0 = Struct_1(arg_1.yx, u_input.a.x, vec4<i32>(reverseBits(_wgslsmith_mult_i32(u_input.a.x | u_input.a.x, select(-6421i, 1i, false))), 631i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-47346i, 49531i, global0.c.x, global0.b), global0.c), vec4<i32>(2147483647i, global0.b, -22189i, 1i)), ~select(vec4<i32>(u_input.a.x, 0i, u_input.a.x, -2147483647i), vec4<i32>(2147483647i, 0i, -38485i, u_input.a.x), vec4<bool>(arg_0, false, false, true))), _wgslsmith_dot_vec3_i32(global0.c.yzy, _wgslsmith_mod_vec3_i32(global0.c.xyy, global0.c.xxx) | ~global0.c.yzz)), any(select(arg_2, select(!arg_2, arg_2, select(arg_2, vec2<bool>(arg_0, false), vec2<bool>(false, true))), !vec2<bool>(true, arg_0))), false);
    let var_1 = _wgslsmith_mult_i32(61351i, var_0.c.x);
    return true;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1) -> vec2<u32> {
    global0 = arg_2;
    let var_0 = !vec4<bool>(false | arg_2.d, true, (all(vec2<bool>(false, false)) | func_3(global0.d, vec3<u32>(1u, arg_2.a.x, 4194u), vec2<bool>(arg_1, true))) || all(vec2<bool>(false, arg_1)), select(arg_1, any(vec2<bool>(false, true)), global0.e));
    var var_1 = -(~arg_2.c.zwz);
    global0 = arg_2;
    var_1 = global0.c.xyw;
    return global0.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> bool {
    global1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(341f)), global1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, 865f))))))) - vec2<f32>(global1.x, 365f)));
    let var_0 = 1877f;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(775f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, -2057f))), -1902f, _wgslsmith_f_op_f32(186f * global1.x))));
    global0 = Struct_1(_wgslsmith_sub_vec2_u32(global0.a, ~_wgslsmith_clamp_vec2_u32(arg_1, _wgslsmith_clamp_vec2_u32(global0.a, arg_1, vec2<u32>(arg_1.x, 40728u)), vec2<u32>(arg_1.x, global0.a.x))), global0.c.x, -_wgslsmith_add_vec4_i32(min(arg_0.c, select(arg_0.c, global0.c, vec4<bool>(arg_0.e, arg_0.e, global0.d, arg_0.d))), ~(-vec4<i32>(-35574i, 2147483647i, u_input.a.x, 37346i))), !func_3(true, ~min(vec3<u32>(1u, 42037u, 34829u), vec3<u32>(12668u, 81285u, 0u)), vec2<bool>(all(vec2<bool>(arg_0.d, true)), false)), false);
    let var_2 = _wgslsmith_f_op_f32(-global1.x);
    return arg_0.e;
}

fn func_1(arg_0: vec2<f32>) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_sub_vec2_u32(min(vec2<u32>(global0.a.x << (global0.a.x % 32u), global0.a.x & global0.a.x), global0.a), global0.a), -2147483647i, vec4<i32>(-1i, u_input.a.x, ~14255i, 0i), global0.d, select(select(-2147483647i >= (global0.b ^ global0.c.x), !global0.d, (global0.d & global0.d) & global0.e), !any(!vec2<bool>(false, global0.d)), func_4(Struct_1(~vec2<u32>(1u, 6504u), -2147483647i << (global0.a.x % 32u), global0.c, true, global0.e), reverseBits(func_2(global0.a, global0.d, Struct_1(vec2<u32>(global0.a.x, global0.a.x), global0.c.x, global0.c, true, global0.d))))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x + -1051f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - -1972f), _wgslsmith_div_f32(global1.x, arg_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(select(546f, arg_0.x, false))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-654f, arg_0.x)))));
    let var_1 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(57590u, global0.a.x) ^ min(global0.a & vec2<u32>(var_0.a.x, var_0.a.x), func_2(vec2<u32>(var_0.a.x, var_0.a.x), false, var_0)), func_2(~var_0.a, !all(vec4<bool>(false, global0.e, global0.d, true)), Struct_1(global0.a, ~21581i, firstTrailingBit(var_0.c), true, true))), reverseBits(~(~(~(-32488i)))), vec4<i32>(select(-1i, max(1i, 26744i), all(vec2<bool>(false, global0.e))) << (abs(global0.a.x) % 32u), 0i, abs(-global0.c.x << (select(global0.a.x, global0.a.x, true) % 32u)), -u_input.a.x), !(!var_0.d), (any(select(vec3<bool>(false, true, global0.d), vec3<bool>(false, true, false), vec3<bool>(global0.e, false, global0.d))) & false) == true);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)));
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(global0.a.x, ~(~50527u)), ~global0.a.x), _wgslsmith_div_i32(u_input.a.x, -2147483647i), countOneBits(var_0.c), func_4(var_0, min(vec2<u32>(~global0.a.x, 4294967295u & var_0.a.x), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(43681u, 4294967295u), vec2<u32>(var_0.a.x, var_1.a.x))))), var_0.e);
    return StorageBuffer(~min(abs(u_input.a.zz), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, var_2.c.x), vec2<i32>(u_input.a.x, -2274i), var_0.c.zx)) | vec2<i32>(global0.b, -select(-51939i, -15314i, var_2.d)), var_2.c.zx, vec4<u32>(abs(countOneBits(var_0.a.x)), min(firstLeadingBit(1u), countOneBits(4294967295u)), 4294967295u, 1u), ~_wgslsmith_clamp_vec3_u32(~select(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(17373u, global0.a.x, var_2.a.x), vec3<bool>(var_1.d, false, false)), min(abs(vec3<u32>(global0.a.x, 41969u, 4294967295u)), vec3<u32>(var_1.a.x, var_0.a.x, 0u)), vec3<u32>(~var_0.a.x, var_2.a.x, var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(floor(-495f)))));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-195f, global1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-301f, 208f)), vec2<bool>(true, true)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-490f, global1.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-219f, -1308f)))))));
}

