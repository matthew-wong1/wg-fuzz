struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(34900u, vec2<i32>(2147483647i, 16065i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2() -> Struct_5 {
    global0 = Struct_5(~u_input.b.x, ~firstTrailingBit(min(global0.b, firstTrailingBit(global0.b))));
    global0 = Struct_5(min(~(~global0.a ^ 73320u), 4294967295u), global0.b << (countOneBits(select(u_input.a.xx >> (u_input.a.zx % vec2<u32>(32u)), u_input.a.yx, true)) % vec2<u32>(32u)));
    global0 = Struct_5(global0.a, global0.b);
    var var_0 = reverseBits(14757i);
    global0 = Struct_5(global0.a, ~vec2<i32>(0i, _wgslsmith_sub_i32(0i, firstTrailingBit(global0.b.x))));
    return Struct_5(global0.a, _wgslsmith_clamp_vec2_i32(-global0.b, global0.b, vec2<i32>(1i, global0.b.x)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec2<i32>) -> i32 {
    global0 = func_2();
    var var_0 = Struct_2(global0.b, ~u_input.a.yy);
    var_0 = Struct_2(_wgslsmith_mult_vec2_i32(abs(global0.b), vec2<i32>(~2147483647i, countOneBits(-29308i))) ^ vec2<i32>(global0.b.x, _wgslsmith_div_i32(~arg_2.x, -11463i)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b.x, 4294967295u), firstTrailingBit(var_0.b)));
    let var_1 = Struct_1(~select(arg_2, arg_2, vec2<bool>(any(vec3<bool>(true, false, true)), false)), min(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), ~global0.a), 4294967295u, _wgslsmith_mod_u32(~u_input.c, arg_1)), min(u_input.a, u_input.b.xxy)), vec2<i32>(1i, -14798i));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)));
    return ~arg_2.x;
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = func_2();
    global0 = var_0;
    let var_1 = Struct_2(vec2<i32>(0i, _wgslsmith_mult_i32(~1i, func_3(_wgslsmith_div_u32(1u, 12700u), 1u | var_0.a, vec2<i32>(var_0.b.x, -14367i)))), vec2<u32>(~1160u, ~firstLeadingBit(4294967295u)));
    let var_2 = _wgslsmith_div_vec4_i32(select(vec4<i32>(max(-12866i, var_0.b.x), var_0.b.x, i32(-1i) * -55493i, 48369i >> (var_0.a % 32u)), vec4<i32>(-2147483647i, -1i, _wgslsmith_div_i32(1i, global0.b.x), -var_1.a.x), true), abs(-(~vec4<i32>(var_1.a.x, 0i, var_0.b.x, var_0.b.x)))) | countOneBits(max(vec4<i32>(~global0.b.x, _wgslsmith_clamp_i32(1i, -2147483647i, -4808i), 0i, var_1.a.x), ~vec4<i32>(0i, var_1.a.x, -1i, var_1.a.x)));
    let var_3 = Struct_3(vec4<bool>(true, true, false, all(vec2<bool>(true, true))), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), _wgslsmith_mod_i32(-7404i, _wgslsmith_mod_i32(var_1.a.x, ~countOneBits(global0.b.x))), Struct_1(min(abs(_wgslsmith_div_vec2_i32(var_0.b, var_0.b)), _wgslsmith_mod_vec2_i32(-global0.b, abs(vec2<i32>(2147483647i, var_2.x)))), ~vec3<u32>(_wgslsmith_div_u32(0u, global0.a), 1u, 63144u), var_2.zy), firstLeadingBit(~1u) >> (u_input.c % 32u));
    return var_3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec4<bool>(true, true, true, true), !vec4<bool>(func_1(-731f), false, false, any(vec4<bool>(true, true, true, false))), true);
    var var_1 = vec2<f32>(-761f, 2398f);
    global0 = func_2();
    global0 = Struct_5(max(10722u, u_input.b.x), global0.b);
    global0 = func_2();
    var var_2 = func_1(_wgslsmith_f_op_f32(min(978f, 105f)));
    var var_3 = _wgslsmith_add_vec2_i32(~global0.b, global0.b);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x - var_1.x)))) + -928f);
    let var_5 = !var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xx, 755f, _wgslsmith_dot_vec3_i32(abs(-(vec3<i32>(global0.b.x, 12365i, var_3.x) & vec3<i32>(var_3.x, 0i, var_3.x))), -abs(vec3<i32>(var_3.x, 2147483647i, 1i) << (vec3<u32>(u_input.c, u_input.b.x, 1u) % vec3<u32>(32u)))));
}

