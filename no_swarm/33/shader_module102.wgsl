struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<u32>(4294967295u, 1u, 30735u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = any(select(vec3<bool>((u_input.a.x >= 1u) && false, true, true), vec3<bool>(any(vec3<bool>(true, false, true)), true, true), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), all(vec4<bool>(true, true, false, false)))));
    global0 = Struct_3(vec3<u32>(countOneBits(~296u), 1u << (1u % 32u), u_input.a.x));
    let var_1 = 547f;
    var_0 = true;
    let var_2 = 70543u;
    return _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(max(vec3<i32>(-1i, 0i, -21892i), -vec3<i32>(1i, 1055i, 22250i)), -vec3<i32>(29639i, -2147483647i, -2147483647i) >> (global0.a % vec3<u32>(32u)), vec3<i32>(-72579i, -1i, 1i)), vec3<i32>(-firstTrailingBit(i32(-1i) * -1i), -(~reverseBits(47712i)), 1i));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_add_i32(arg_1.x, _wgslsmith_add_i32(-1i, arg_1.x));
    var var_1 = func_3();
    let var_2 = select(vec4<bool>(true, true, true, true), !(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), true)), !select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true)), true));
    var_1 = _wgslsmith_dot_vec2_i32(~(~(~(-arg_1.zy))), vec2<i32>(_wgslsmith_sub_i32(-1i, -arg_1.x), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0, 51207i), vec2<i32>(2505i, var_0)), ~arg_1.xx) & var_0));
    global0 = Struct_3(~(~u_input.a));
    return vec2<bool>(any(select(vec4<bool>(true, !var_2.x, select(var_2.x, false, var_2.x), true), !select(var_2, var_2, var_2), var_2.x)), false);
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_div_u32(0u, _wgslsmith_mult_u32(u_input.a.x, global0.a.x)), !all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), func_2(327f, vec3<i32>(arg_0, 29071i, -1i)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))));
    global0 = Struct_3(~(~_wgslsmith_sub_vec3_u32(u_input.a, global0.a)));
    global0 = Struct_3(_wgslsmith_div_vec3_u32(~reverseBits(u_input.a ^ vec3<u32>(4895u, global0.a.x, 69870u)), firstTrailingBit(vec3<u32>(global0.a.x, 109532u, _wgslsmith_sub_u32(4294967295u, 0u)))));
    global0 = Struct_3(vec3<u32>(4294967295u, 57914u >> (~global0.a.x % 32u), ~(1u ^ global0.a.x)) | ~vec3<u32>(1u, 39929u, ~80662u));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1036f + 170f), -358f, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-229f, 482f) - -1798f))), -807f), _wgslsmith_div_f32(1961f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1607f), _wgslsmith_f_op_f32(step(-499f, 135f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(226f * -1167f))))));
    return Struct_3(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(-(i32(-1i) * -1i));
    global0 = func_1(abs(1i));
    let var_0 = func_1(-_wgslsmith_div_i32(-77405i, 2147483647i));
    let var_1 = -2147483647i;
    let var_2 = min(~abs(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 33860i), vec2<i32>(var_1, -1i)))), vec2<i32>(var_1, abs(_wgslsmith_mult_i32(var_1 << (1u % 32u), -1i))));
    global0 = Struct_3(countOneBits(var_0.a));
    let var_3 = vec4<bool>(all(vec4<bool>(true, any(vec3<bool>(true, true, true)), true, select(true, true, any(vec2<bool>(false, true))))), true, all(vec4<bool>(!any(vec3<bool>(false, true, false)), !func_2(198f, vec3<i32>(-2147483647i, var_2.x, -5722i)).x, any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true))), u_input.a.x == abs(var_0.a.x))), all(!vec4<bool>(true, true, any(vec3<bool>(true, true, false)), var_1 >= -1i)));
    global0 = func_1(max(abs(var_1), -2147483647i));
    global0 = func_1(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-365f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -238f))) - -619f), var_2);
}

