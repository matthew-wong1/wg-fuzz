struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec4<i32> {
    var var_0 = -1000f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -531f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-577f, 1652f) + 239f) - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-106f - 837f)))));
    var var_1 = countOneBits(u_input.c.x);
    let var_2 = Struct_2(any(vec3<bool>(true, true, true)));
    var var_3 = vec4<i32>(u_input.c.x << (u_input.b % 32u), abs(~_wgslsmith_clamp_i32(1i, i32(-1i) * -2147483647i, -u_input.c.x)), 1171i, (u_input.c.x & 23708i) & abs(2147483647i));
    return select(u_input.c, vec4<i32>(0i, -_wgslsmith_mult_i32(var_3.x, _wgslsmith_sub_i32(u_input.c.x, var_3.x)), _wgslsmith_dot_vec4_i32(~(~u_input.c), firstLeadingBit(reverseBits(u_input.c))), u_input.c.x), select(select(select(!vec4<bool>(false, false, true, var_2.a), !vec4<bool>(false, true, true, var_2.a), all(vec4<bool>(var_2.a, var_2.a, false, true))), vec4<bool>(true, var_2.a, u_input.a > 3521u, false), !(!vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a))), vec4<bool>(true, true, all(vec2<bool>(var_2.a, var_2.a)) && var_2.a, var_2.a), !all(vec2<bool>(true, true))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_1(!arg_1.a, arg_3.x, 4294967295u, arg_2, _wgslsmith_sub_vec4_i32(func_3(), u_input.c));
    return Struct_2(any(vec4<bool>(arg_2 || true, all(var_0.a), all(!vec4<bool>(arg_0.b, arg_1.b, false, arg_2)), false)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_sub_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.b, 10418u), vec3<u32>(4294967295u, 20132u, u_input.a))), vec3<u32>(11390u, 11915u, ~4294967295u)));
    let var_1 = Struct_1(select(!select(!vec3<bool>(arg_0.a, false, false), vec3<bool>(arg_0.a, arg_0.a, true), select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_0.a, false, false))), vec3<bool>(!(!arg_0.a), arg_0.a, all(select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(true, arg_0.a, true)))), select(select(!vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(true, arg_0.a, arg_0.a), false), vec3<bool>(arg_0.a, select(true, arg_0.a, false), true), vec3<bool>(true, true, true))), false, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, ~var_0.x), u_input.b, ~var_0.x, ~(~1u)), countOneBits(~vec4<u32>(u_input.a, 73094u, 4294967295u, u_input.b))), arg_0.a, _wgslsmith_sub_vec4_i32(select(max(u_input.c, u_input.c) ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 22602i, u_input.c.x, 40128i), vec4<i32>(u_input.c.x, 4561i, u_input.c.x, 12574i)), -u_input.c, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, -6712i)) > _wgslsmith_mult_i32(2147483647i, u_input.c.x)), u_input.c));
    var_0 = ~(reverseBits(vec3<u32>(29624u, var_0.x, var_1.c) << (vec3<u32>(896u, 4294967295u, u_input.b) % vec3<u32>(32u))) & min(_wgslsmith_div_vec3_u32(vec3<u32>(11031u, var_0.x, u_input.a), vec3<u32>(23792u, 1u, 0u)), ~vec3<u32>(4294967295u, 9338u, 6942u))) | ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, var_1.c, u_input.a) & vec4<u32>(71228u, 1u, var_1.c, 0u), abs(vec4<u32>(u_input.b, var_1.c, var_1.c, 4294967295u))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_1.c, var_0.x), vec3<u32>(27903u, 1u, var_0.x)) ^ 1u, ~51174u);
    var var_2 = arg_0.a;
    let var_3 = -(_wgslsmith_mod_vec4_i32(~var_1.e, (vec4<i32>(-2147483647i, var_1.e.x, u_input.c.x, var_1.e.x) << (vec4<u32>(32511u, 4294967295u, u_input.a, 25330u) % vec4<u32>(32u))) | ~vec4<i32>(-2147483647i, -2147483647i, u_input.c.x, var_1.e.x)) >> (~firstLeadingBit(~vec4<u32>(u_input.b, u_input.a, 0u, var_0.x)) % vec4<u32>(32u)));
    return var_1;
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(199f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-244f * 622f), _wgslsmith_f_op_f32(round(662f)), any(vec4<bool>(true, true, true, false))))))));
    let var_1 = func_4(func_2(Struct_1(vec3<bool>(true, true, true), !any(vec3<bool>(true, false, false)), u_input.a, true, u_input.c), Struct_1(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), true, 1u, !any(vec4<bool>(false, false, true, true)), -vec4<i32>(390i, u_input.c.x, u_input.c.x, -13888i)), false, vec3<bool>(any(vec3<bool>(false, false, false)), true, (var_0.x <= var_0.x) || (13471i <= u_input.c.x))));
    var var_2 = func_4(func_2(Struct_1(vec3<bool>(var_1.d, false, var_1.a.x), all(var_1.a), firstTrailingBit(10790u), 1u < u_input.a, var_1.e), Struct_1(var_1.a, !var_1.b, var_1.c >> (u_input.a % 32u), func_4(Struct_2(false)).b, _wgslsmith_add_vec4_i32(vec4<i32>(var_1.e.x, var_1.e.x, var_1.e.x, var_1.e.x), var_1.e)), false, vec3<bool>(var_1.d, var_1.a.x, true))).c <= max(abs(1u), ~4645u);
    var var_3 = u_input.c;
    let var_4 = func_2(var_1, func_4(Struct_2(false)), var_1.b, select(select(func_4(func_2(var_1, var_1, true, vec3<bool>(var_1.d, false, true))).a, !var_1.a, var_1.d), !(!select(var_1.a, vec3<bool>(true, false, var_1.b), var_1.a.x)), var_1.b));
    return firstLeadingBit(vec2<u32>(~firstLeadingBit(_wgslsmith_clamp_u32(var_1.c, u_input.b, 66783u)), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_1();
    var var_2 = Struct_1(vec3<bool>(all(!vec4<bool>(true, var_0, true, true)), var_0, func_4(Struct_2(false)).b), var_0, var_1.x, !(!(select(var_0, var_0, var_0) | (var_0 | true))), select(u_input.c, vec4<i32>(_wgslsmith_mult_i32(2147483647i, min(u_input.c.x, u_input.c.x)), 0i, -1i, _wgslsmith_add_i32(-238i, ~u_input.c.x)), all(!vec3<bool>(var_0, var_0, true))));
    var_1 = vec2<u32>(var_2.c, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(max(var_2.e.yxw << (vec3<u32>(select(50825u, 1u, true), firstTrailingBit(30625u), ~4294967295u) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(var_2.e.x ^ -2147483647i, u_input.c.x, firstLeadingBit(50313i)), ~vec3<i32>(var_2.e.x, -1i, var_2.e.x))), ~_wgslsmith_add_vec4_u32(min(vec4<u32>(0u, 9227u, 35051u, 1u), reverseBits(vec4<u32>(42652u, var_1.x, u_input.b, u_input.b))), vec4<u32>(57108u, 19336u, ~18452u, var_1.x)), vec4<i32>(-34178i, u_input.c.x & _wgslsmith_sub_i32(_wgslsmith_mult_i32(30960i, var_2.e.x), -28046i), -4115i & u_input.c.x, (var_2.e.x ^ 1i) & u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(861f))) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, 737f), 1f)))), 1776f);
}

