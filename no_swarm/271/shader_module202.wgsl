struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec4<bool>, 9>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_add_i32(-firstTrailingBit(-global0.a), global0.a);
    let var_1 = select(vec2<bool>(global0.a > reverseBits(24698i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b.x))) == 1351f), !(!arg_0), select(true, true, true));
    var var_2 = vec4<i32>(select(-6670i, -global0.a, any(!vec4<bool>(true, var_1.x, false, arg_0.x))), 6609i, global0.a, global0.a) << (u_input.b % vec4<u32>(32u));
    var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(max(vec4<i32>(-var_2.x, ~(-4982i), global0.a | -1i, _wgslsmith_clamp_i32(global0.a, 42456i, global0.a)), select(~vec4<i32>(-2216i, var_2.x, -4171i, global0.a), vec4<i32>(var_2.x, global0.a, global0.a, 1i), global1[_wgslsmith_index_u32(countOneBits(global0.e), 9u)])), -_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, global0.a, -2147483647i), vec4<i32>(global0.a, var_2.x, 2147483647i, 2147483647i))), _wgslsmith_div_vec4_i32(~min(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, var_2.x, 26998i, -40677i), vec4<i32>(global0.a, 11416i, 32094i, var_2.x)), reverseBits(vec4<i32>(1i, global0.a, global0.a, global0.a))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(global0.a, -2147483647i, global0.a, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(global0.a, var_2.x, var_2.x, global0.a), vec4<i32>(-1i, var_2.x, 0i, 2147483647i))), firstTrailingBit(~vec4<i32>(-20640i, var_2.x, -8333i, global0.a)))));
    let var_3 = !(arg_0.x & (global0.e < global0.e));
    return -1401f;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> u32 {
    global0 = Struct_4(20092i, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, false))))))), _wgslsmith_f_op_f32(select(global0.c.a, arg_0.x, true)), _wgslsmith_f_op_f32(-arg_1)), global0.d, global0.c, 46654u);
    global1 = array<vec4<bool>, 9>();
    global1 = array<vec4<bool>, 9>();
    var var_0 = global0.d.a;
    var var_1 = global0.b;
    return _wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.wwy, ~vec3<u32>(global0.e, 1u, 28830u)), min(vec3<u32>(1u, 37187u, 0u), vec3<u32>(3871u, 7447u, 94197u))), _wgslsmith_add_u32(~7803u, _wgslsmith_dot_vec2_u32(u_input.b.wx, select(u_input.b.zy, vec2<u32>(0u, u_input.a.x), true))), 4294967295u << (u_input.b.x % 32u)));
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: u32) -> vec4<bool> {
    global0 = Struct_4(arg_1.x, global0.b, Struct_2(_wgslsmith_f_op_f32(-global0.d.a)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.d.a - global0.c.a))))), _wgslsmith_sub_u32(~4294967295u, global0.e));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.a * 1000f)));
    let var_1 = arg_2;
    let var_2 = true;
    var var_3 = reverseBits(_wgslsmith_mult_u32(~(~var_1), reverseBits(u_input.b.x)) << (28766u % 32u));
    return !(!global1[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(arg_2), ~(~var_1)), 9u)]);
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    let var_0 = func_4(~(func_2(global0.b.zx, 574f) ^ 1u) << (~(_wgslsmith_mod_u32(67991u, global0.e) & 0u) % 32u), vec3<i32>(-55226i, i32(-1i) * -global0.a, abs(_wgslsmith_mod_i32(-37907i, -10468i) ^ ~global0.a)), ~global0.e);
    let var_1 = true;
    global1 = array<vec4<bool>, 9>();
    var var_2 = u_input.a.x >= global0.e;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~(~_wgslsmith_sub_u32(u_input.b.x, global0.e)), firstLeadingBit(~(~25864u))), u_input.b.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global0 = Struct_4(_wgslsmith_div_i32(-1i, 1i << (func_1(true, true) % 32u)), global0.b, global0.c, Struct_2(_wgslsmith_div_f32(207f, _wgslsmith_f_op_f32(exp2(global0.c.a)))), firstLeadingBit(func_1(true, reverseBits(u_input.b.x) != 4294967295u)));
    let var_1 = Struct_3(Struct_1(firstLeadingBit(global0.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x | 12719u, ~12979u, 1u, _wgslsmith_mod_u32(var_0.x, global0.e)), countOneBits(max(var_0, u_input.b))), _wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(58961u, u_input.b.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.e, 33563u, var_0.x, global0.e), vec4<u32>(var_0.x, 4294967295u, var_0.x, 1u)), var_0.x), u_input.a & vec2<u32>(u_input.a.x, global0.e)), var_0), -(vec4<i32>(-global0.a, -8173i, ~global0.a, -56062i ^ global0.a) & _wgslsmith_add_vec4_i32(vec4<i32>(global0.a, -2147483647i, 2147483647i, global0.a), vec4<i32>(global0.a, -2147483647i, global0.a, global0.a) >> (u_input.b % vec4<u32>(32u)))), ~global0.a, any(select(vec2<bool>(true, global0.c.a == global0.d.a), vec2<bool>(true, true), false)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global0.c.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(646f)), _wgslsmith_div_f32(global0.d.a, global0.b.x))))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.a, _wgslsmith_f_op_f32(select(global0.b.x, -140f, var_1.d))))));
    var var_3 = 0i;
    var var_4 = ~global0.a == var_1.b.x;
    var var_5 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1581f, 428f, global0.b.x, global0.b.x))))) - vec4<f32>(-1247f, _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(var_2 + -1175f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -229f), var_2)), _wgslsmith_f_op_f32(-global0.d.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(22712u, var_1.a.d.x, 40998u, var_1.a.c.x), var_1.b.wxy, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.x + global0.d.a)), 474f, true)), _wgslsmith_f_op_f32(sign(-617f)), 449f), ~(~firstTrailingBit(func_1(var_1.d, false))), var_1.b);
}

