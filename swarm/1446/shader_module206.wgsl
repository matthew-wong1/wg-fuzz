struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(73119u, 15596i, vec4<f32>(-275f, -695f, -447f, -1000f), vec4<i32>(i32(-2147483648), -13559i, 72221i, -1i));

var<private> global1: u32 = 4294967295u;

var<private> global2: array<Struct_1, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    return ~4294967295u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = false;
    var var_1 = global0.c.xyw;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.c.ww + _wgslsmith_div_vec2_f32(var_1.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.yy, vec2<f32>(656f, arg_1.c.x))))));
    let var_3 = ~(~vec2<u32>(~arg_1.a, _wgslsmith_sub_u32(14136u, _wgslsmith_div_u32(7499u, 1u))));
    let var_4 = vec2<i32>(firstLeadingBit(abs(-1i)), arg_1.b);
    return ~(~_wgslsmith_mult_u32(~func_2(vec4<u32>(9906u, arg_0.a, 4294967295u, arg_0.a), global2[_wgslsmith_index_u32(64662u, 5u)]), arg_0.a));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(global0.a, -62057i, global0.c, _wgslsmith_sub_vec4_i32(global0.d | vec4<i32>(32204i, _wgslsmith_mult_i32(u_input.b, 1i), _wgslsmith_mod_i32(u_input.c, 2147483647i), u_input.b), vec4<i32>(countOneBits(global0.d.x), global0.b, -global0.d.x, firstLeadingBit(u_input.c)) << (abs(_wgslsmith_add_vec4_u32(vec4<u32>(global0.a, 4294967295u, global0.a, 1u), vec4<u32>(global0.a, global0.a, 44969u, global0.a))) % vec4<u32>(32u))));
    return global0.d & vec4<i32>(u_input.d, -1580i, 1i, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_mod_u32(global0.a, _wgslsmith_add_u32(~_wgslsmith_div_u32(global0.a, 4294967295u), max(1u, func_1(Struct_1(global0.a, -2826i, vec4<f32>(-366f, -472f, 930f, 374f), global0.d), global2[_wgslsmith_index_u32(global0.a, 5u)])))), u_input.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(535f * global0.c.x))), 848f, global0.c.x, 338f), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(global0.d, vec4<i32>(global0.b, u_input.b, u_input.c, global0.b)), func_3()) >> (vec4<u32>(~global0.a, 4294967295u, global0.a, ~4294967295u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(global0.d, global0.d) & firstTrailingBit(global0.d), vec4<i32>(_wgslsmith_add_i32(1i, global0.b), -2147483647i, select(u_input.c, -1i, true), global0.d.x), ~(-vec4<i32>(global0.d.x, u_input.c, global0.d.x, global0.b)))));
    var var_0 = Struct_1(1u, -max(firstLeadingBit(~u_input.b), firstTrailingBit(-42849i)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-731f)), 1000f, !(-2147483647i < global0.d.x))), 760f, _wgslsmith_f_op_f32(375f - 260f), 265f), global0.d);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c));
    var var_2 = Struct_1(var_0.a, ~(-32660i) & u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_1.x, 259f, var_1.x)))), var_0.d);
    var var_3 = vec3<u32>(_wgslsmith_div_u32(var_0.a, _wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(global0.a, 20013u))) | 1u, countOneBits(abs(_wgslsmith_sub_u32(~var_0.a, abs(var_0.a)))), global0.a);
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(max(global0.a, reverseBits(4294967295u)), var_3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_2.c), _wgslsmith_f_op_vec4_f32(-var_2.c), vec4<bool>(false, true, false, true)))))));
}

