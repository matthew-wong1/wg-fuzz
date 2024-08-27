struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

var<private> global1: array<Struct_1, 11>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_2(Struct_1(all(vec4<bool>(true, true, true, true))));
    global0 = Struct_1(true);
    var_0 = Struct_2(var_0.a);
    global0 = Struct_1(false);
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(953f, 1029f) * vec2<f32>(-1398f, 631f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(981f, -745f) * vec2<f32>(1082f, 805f)))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(320f, 746f)), vec2<f32>(_wgslsmith_f_op_f32(round(-1608f)), _wgslsmith_div_f32(165f, 211f)))))));
    return ~vec4<i32>(~1i, (i32(-1i) * -u_input.a) | 2147483647i, min(firstTrailingBit(2147483647i), ~u_input.a) ^ -993i, _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a, u_input.b, _wgslsmith_mod_i32(u_input.b, u_input.b)), vec3<i32>(countOneBits(36599i), u_input.b | u_input.b, 1i)));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(false);
    let var_0 = vec4<i32>(0i, firstTrailingBit(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(-1i), (u_input.b << (u_input.c % 32u)) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, 1i, 6171i), vec4<i32>(u_input.b, u_input.b, 1i, 0i)), 24248i, ~(u_input.a ^ 10885i)), (func_3() << (countOneBits(vec4<u32>(1u, u_input.c, 16676u, 54115u)) % vec4<u32>(32u))) | -abs(vec4<i32>(-39303i, 1i, u_input.a, u_input.a))), ~reverseBits(_wgslsmith_sub_i32(-17462i, u_input.b)));
    var var_1 = vec4<u32>(~4178u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u << (~u_input.c % 32u), 0u), _wgslsmith_dot_vec4_u32(select(countOneBits(vec4<u32>(u_input.c, 4294967295u, 0u, u_input.c)), vec4<u32>(68394u, 4294967295u, 41702u, u_input.c), all(vec3<bool>(false, true, global0.a))), firstTrailingBit(vec4<u32>(u_input.c, 1u, 29825u, u_input.c))), 1u), ~(reverseBits(4657u | u_input.c) << (~(~7022u) % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, u_input.c, firstLeadingBit(u_input.c), u_input.c) >> (min(vec4<u32>(u_input.c, u_input.c, u_input.c, 1u) << (vec4<u32>(4448u, 0u, 4294967295u, u_input.c) % vec4<u32>(32u)), vec4<u32>(34629u, 67227u, u_input.c, u_input.c) & vec4<u32>(22094u, u_input.c, 1u, 7206u)) % vec4<u32>(32u)), max(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 54418u, u_input.c, u_input.c) >> (vec4<u32>(u_input.c, 4294967295u, 24214u, u_input.c) % vec4<u32>(32u)), ~vec4<u32>(39476u, u_input.c, 71759u, u_input.c)), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, 48441u, 4294967295u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 34703u, 93761u, 4294967295u), vec4<u32>(u_input.c, 4726u, u_input.c, 65142u))))));
    global1 = array<Struct_1, 11>();
    let var_2 = min(firstLeadingBit(0i), _wgslsmith_clamp_i32(~(~u_input.b) & u_input.a, firstTrailingBit(-2147483647i), firstLeadingBit(var_0.x) << (u_input.c % 32u)));
    return Struct_1(global0.a);
}

fn func_1() -> Struct_2 {
    let var_0 = 362f;
    global0 = Struct_1(global0.a);
    global0 = func_2();
    var var_1 = vec2<u32>(4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.c, u_input.c)), firstTrailingBit(vec2<u32>(u_input.c, 1u))), u_input.c)) & ~reverseBits(~vec2<u32>(u_input.c, u_input.c) | ~vec2<u32>(49041u, 71510u));
    var var_2 = vec2<bool>(true, any(select(select(select(vec4<bool>(global0.a, false, true, false), vec4<bool>(true, global0.a, true, global0.a), vec4<bool>(true, global0.a, global0.a, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, global0.a), false), false), select(select(vec4<bool>(false, global0.a, true, true), vec4<bool>(global0.a, false, false, false), vec4<bool>(false, true, global0.a, global0.a)), vec4<bool>(true, global0.a, false, false), true), select(!vec4<bool>(global0.a, global0.a, true, global0.a), vec4<bool>(false, global0.a, true, false), global0.a))));
    return Struct_2(Struct_1(!(global0.a && true) & false));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = ~(func_3().x >> (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.c, 1u, u_input.c, u_input.c)) ^ (vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u) ^ vec4<u32>(57046u, 1u, u_input.c, u_input.c)), _wgslsmith_div_vec4_u32(select(vec4<u32>(0u, 0u, 1u, 47159u), vec4<u32>(u_input.c, u_input.c, 4294967295u, 2646u), false), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) ^ vec4<u32>(0u, u_input.c, u_input.c, 4294967295u))) % 32u));
    global1 = array<Struct_1, 11>();
    var var_1 = vec3<f32>(-752f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1401f))) - -968f), 202f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(182f, 763f), -705f, arg_0.a.a)) * _wgslsmith_f_op_f32(f32(-1f) * -1548f))));
    var var_2 = func_1();
    var var_3 = Struct_1((2147483647i < arg_1) == (arg_1 == (-arg_1 & u_input.a)));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    global0 = global1[_wgslsmith_index_u32(~(~func_4(func_1(), u_input.a)), 11u)];
    let var_1 = global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(~(_wgslsmith_clamp_u32(u_input.c, 57127u, u_input.c) >> (_wgslsmith_div_u32(0u, 1u) % 32u)), 0u)), 11u)];
    var var_2 = func_1();
    var var_3 = vec4<i32>(~(-u_input.b), -2147483647i | _wgslsmith_add_i32(~u_input.b, ~u_input.b), _wgslsmith_div_i32(-10433i, u_input.a) >> (_wgslsmith_mod_u32(u_input.c, 334u) % 32u), 22292i);
    var_2 = func_1();
    var var_4 = func_1();
    var var_5 = -680f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(u_input.c, ~u_input.c));
}

