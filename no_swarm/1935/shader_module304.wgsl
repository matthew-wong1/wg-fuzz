struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> bool {
    global0 = Struct_2(Struct_1(vec2<f32>(-770f, global0.a.a.x), !select(!vec3<bool>(false, global0.a.b.x, true), vec3<bool>(true, global0.a.b.x, global0.a.b.x), global0.a.b.x | global0.a.b.x), vec2<i32>(-(~2147483647i), global0.a.c.x)));
    global0 = Struct_2(global0.a);
    var var_0 = !global0.a.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(global0.a.a));
    return !(var_1.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.a.x))) - var_1.x));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(u_input.d.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(254f - arg_1.a.x))), !global0.a.b, _wgslsmith_div_vec2_i32(global0.a.c, vec2<i32>(countOneBits(global0.a.c.x), _wgslsmith_sub_i32(0i, global0.a.c.x)))));
    let var_2 = Struct_3(!(!all(!vec4<bool>(var_1.a.b.x, arg_1.b.x, arg_1.b.x, global0.a.b.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.a.a, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, arg_1.a.x))), func_3()))), select(vec3<bool>(arg_1.c.x >= 0i, false == arg_1.b.x, !arg_1.b.x), global0.a.b, !(!global0.a.b)), arg_1.c), global0.a, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.x) * -1000f), -401f, global0.a.b.x)) * 2246f));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-576f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -488f) + -432f))), -1000f, -689f);
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(var_2.b.a + var_1.a.a), select(!(!global0.a.b), !vec3<bool>(global0.a.b.x, arg_1.b.x, global0.a.b.x), !(var_1.a.b.x || false)), -(~(~vec2<i32>(arg_1.c.x, global0.a.c.x)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.xx - vec2<f32>(-749f, global0.a.a.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -436f) * var_4.a.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-920f, 1400f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, var_4.a.a.x) * var_4.a.a), vec2<f32>(-1000f, -2143f))))), arg_1.b, var_1.a.c);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(676f, -186f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, -1538f)))), !global0.a.b, vec2<i32>(arg_0.c.x, 2147483647i));
    let var_1 = firstLeadingBit(~_wgslsmith_sub_u32(u_input.b, _wgslsmith_clamp_u32(u_input.a.x, u_input.d.x, 16141u)) ^ (23728u & u_input.a.x));
    let var_2 = u_input.d & ~vec3<u32>(_wgslsmith_mult_u32(73503u, _wgslsmith_add_u32(2807u, u_input.a.x)), ~var_1, firstLeadingBit(u_input.a.x ^ 4294967295u));
    var var_3 = var_0.b.x;
    var var_4 = var_2.x;
    return global0.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = global0.a.c.x;
    let var_1 = arg_3.b.x;
    var var_2 = ~_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-19414i, 1i, reverseBits(3899i), 1i)), _wgslsmith_add_vec4_i32(reverseBits(-vec4<i32>(1i, global0.a.c.x, 0i, arg_3.c.x)), -vec4<i32>(arg_2.c.c.x, -2147483647i, global0.a.c.x, -6344i)));
    global0 = Struct_2(func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -371f)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a.x, global0.a.a.x) - vec2<f32>(1730f, -2696f)), vec3<bool>(arg_2.a, var_1, false), ~vec2<i32>(global0.a.c.x, arg_3.c.x))), var_2.zyx));
    var var_3 = func_2(_wgslsmith_f_op_f32(-func_2(arg_2.b.a.x, func_2(func_2(global0.a.a.x, Struct_1(arg_1.xx, global0.a.b, arg_3.c)).a.x, func_4(arg_2.b, var_2.xyx))).a.x), func_4(func_4(arg_3, ~var_2.wyz), vec3<i32>(var_2.x, select(_wgslsmith_mod_i32(arg_2.b.c.x, -61254i), _wgslsmith_mod_i32(arg_2.b.c.x, 12126i), !arg_0.x), _wgslsmith_add_i32(arg_2.b.c.x, -45129i))));
    return vec2<f32>(_wgslsmith_f_op_f32(sign(global0.a.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.b.a.x - -628f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.a.x * arg_3.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -445f)) + -722f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(global0.a.b.x, global0.a.b.x, true, true), vec3<f32>(global0.a.a.x, global0.a.a.x, 1008f), Struct_3(global0.a.b.x, global0.a, Struct_1(global0.a.a, vec3<bool>(true, true, false), global0.a.c), 1u, global0.a.a.x), global0.a)))))), !vec3<bool>(global0.a.b.x, global0.a.b.x, true), _wgslsmith_sub_vec2_i32(global0.a.c, _wgslsmith_add_vec2_i32(global0.a.c, vec2<i32>(-23355i, 2147483647i))) & _wgslsmith_div_vec2_i32(-global0.a.c, ~global0.a.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.a.a.x, -549f, 272f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1164f, global0.a.a.x) - vec3<f32>(global0.a.a.x, global0.a.a.x, 774f)), global0.a.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1779f, global0.a.a.x, global0.a.a.x), vec3<f32>(global0.a.a.x, global0.a.a.x, -113f))))))));
}

