struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    global0 = array<vec2<u32>, 2>();
    let var_0 = Struct_1(u_input.b);
    global0 = array<vec2<u32>, 2>();
    global0 = array<vec2<u32>, 2>();
    global0 = array<vec2<u32>, 2>();
    return !(0i >= u_input.d);
}

fn func_2() -> u32 {
    let var_0 = Struct_4(!vec3<bool>(true, !func_3(), _wgslsmith_add_i32(u_input.a, u_input.d) == 1i), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 2092f)), Struct_2(Struct_1(firstLeadingBit(u_input.b)))), u_input.b.x);
    var var_1 = vec3<i32>(55910i, u_input.c.x, ~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-53024i, 1i, -u_input.d), 0i));
    var var_2 = -firstTrailingBit(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(34383i, var_1.x, -1i), abs(vec3<i32>(41275i, var_1.x, -1i)))));
    var var_3 = -(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(21283i, -1i), u_input.c)) >> (abs(global0[_wgslsmith_index_u32(1u, 2u)]) % vec2<u32>(32u));
    let var_4 = true;
    return countOneBits(_wgslsmith_dot_vec4_u32(~firstLeadingBit(~vec4<u32>(var_0.b.b.a.a.x, 154123u, var_0.c, u_input.b.x)), var_0.b.b.a.a));
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(firstTrailingBit(u_input.b.x), 1u ^ u_input.b.x, select(u_input.b.x, u_input.b.x, true), _wgslsmith_dot_vec3_u32(vec3<u32>(11834u, u_input.b.x, u_input.b.x), u_input.b.xxy)), ~vec4<u32>(~1u, _wgslsmith_mult_u32(u_input.b.x, 0u), 2690u ^ u_input.b.x, u_input.b.x ^ 0u)) ^ firstLeadingBit(~select(vec4<u32>(0u, 103262u, u_input.b.x, u_input.b.x), u_input.b, true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) - 1000f)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-113f, _wgslsmith_f_op_f32(sign(-1500f)))) * 1569f)));
    var var_2 = ~func_2();
    global0 = array<vec2<u32>, 2>();
    var_2 = ~_wgslsmith_sub_u32(var_0.x, 4294967295u);
    return Struct_4(select(vec3<bool>(!all(vec3<bool>(var_1, false, true)), true, any(vec4<bool>(true, false, var_1, var_1))), vec3<bool>(var_1, true, !(!var_1)), true), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -700f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-891f - 427f)))), Struct_2(Struct_1(firstLeadingBit(vec4<u32>(u_input.b.x, var_0.x, 4294967295u, 32555u))))), _wgslsmith_mult_u32(1u, select(~1u, select(var_0.x, ~u_input.b.x, select(var_1, false, var_1)), true)));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = func_1().b.b.a;
    return func_1().b.b;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_4 {
    let var_0 = select(firstLeadingBit(~_wgslsmith_mod_vec4_u32(func_4(Struct_4(vec3<bool>(false, false, false), Struct_3(vec2<f32>(573f, 1000f), arg_1), 8928u), vec2<i32>(2147483647i, -56767i), vec2<f32>(-665f, -615f), Struct_1(vec4<u32>(0u, 0u, arg_1.a.a.x, 4294967295u))).a.a, ~u_input.b)), vec4<u32>(~(~_wgslsmith_add_u32(u_input.b.x, 0u)), u_input.b.x, firstLeadingBit(arg_1.a.a.x), select(_wgslsmith_mult_u32(~30991u, ~4294967295u), ~(~u_input.b.x), true)), !vec4<bool>(all(vec2<bool>(false, false)), select(true, true, true), true, false));
    let var_1 = ~(~(~func_1().b.b.a.a.x));
    global0 = array<vec2<u32>, 2>();
    global0 = array<vec2<u32>, 2>();
    let var_2 = 0u & arg_1.a.a.x;
    return Struct_4(select(func_1().a, !vec3<bool>(any(vec2<bool>(false, false)), all(vec4<bool>(false, false, false, true)), arg_0.x > u_input.d), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true)), func_1().b, ~var_2);
}

fn func_6(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: i32, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = u_input.c;
    global0 = array<vec2<u32>, 2>();
    var var_1 = Struct_2(arg_0.b.b.a);
    var_0 = vec2<i32>(~var_0.x >> (u_input.b.x % 32u), _wgslsmith_dot_vec4_i32(~select(-vec4<i32>(var_0.x, arg_2, arg_2, 2147483647i), vec4<i32>(1i, -2147483647i, arg_2, -28118i), vec4<bool>(arg_3.x, false, arg_0.a.x, arg_0.a.x)), ~vec4<i32>(-1i | u_input.d, arg_2, _wgslsmith_div_i32(-1i, u_input.d), arg_2)));
    var_0 = ~(u_input.c | vec2<i32>(u_input.a, _wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, 0i), -48143i)));
    return func_1().b.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(~vec3<i32>(u_input.c.x, ~(-2147483647i), min(u_input.a, 0i)), func_4(func_1(), u_input.c, vec2<f32>(_wgslsmith_div_f32(-579f, -992f), -1094f), func_1().b.b.a)), u_input.b.wwx, u_input.a, vec3<bool>(true, true, true));
    var var_1 = u_input.c;
    var var_2 = 26528i;
    var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.a, 13792i), u_input.c), ~(-_wgslsmith_div_i32(u_input.a | -37453i, _wgslsmith_add_i32(u_input.a, 0i))));
    var_0 = Struct_1(vec4<u32>(~0u, ~64061u | func_6(func_5(vec3<i32>(var_1.x, var_1.x, var_1.x), Struct_2(Struct_1(u_input.b))), func_1().b.b.a.a.yyy, i32(-1i) * -2147483647i, vec3<bool>(false, true, true)).a.x, ~(~abs(var_0.a.x)), var_0.a.x));
    var var_3 = -(vec3<i32>(-1i) * -vec3<i32>(~var_1.x, var_1.x, var_1.x));
    var var_4 = _wgslsmith_div_u32(~var_0.a.x, min(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(var_0.a, u_input.b), 1u), _wgslsmith_div_u32(4294967295u | (0u & var_0.a.x), var_0.a.x)));
    var var_5 = ~max(-reverseBits(-2147483647i), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-firstTrailingBit(-9293i), var_3.x, i32(-1i) * -(~(-1i))), func_2(), -(i32(-1i) * -var_3.x));
}

