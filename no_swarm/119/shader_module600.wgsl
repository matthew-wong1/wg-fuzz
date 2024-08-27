struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = arg_0;
    var var_1 = Struct_1(u_input.a.yz, -1000f, u_input.a.yz);
    global0 = array<Struct_1, 30>();
    var var_2 = vec3<i32>(var_1.a.x, 1i, u_input.a.x);
    var var_3 = global0[_wgslsmith_index_u32(68760u, 30u)];
    return _wgslsmith_dot_vec4_i32(~select(min(vec4<i32>(54217i, 15356i, 2612i, 12944i), ~vec4<i32>(var_1.a.x, -2147483647i, 25382i, var_1.c.x)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_1.c.x, u_input.a.x, u_input.a.x) & vec4<i32>(0i, -9446i, 13814i, var_1.c.x), vec4<i32>(var_2.x, 34260i, 44151i, var_2.x)), !select(vec4<bool>(false, arg_0.b, arg_0.b, false), vec4<bool>(var_0.a, var_0.a, false, true), vec4<bool>(true, var_0.a, var_0.b, var_0.a))), vec4<i32>(var_3.a.x, -1i ^ min(2147483647i, var_3.a.x), -34359i, -21576i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(~var_2.x, 0i, _wgslsmith_mod_i32(-1i, -1873i), _wgslsmith_dot_vec4_i32(vec4<i32>(14061i, -1i, var_1.a.x, 1i), vec4<i32>(-2954i, 2147483647i, 2147483647i, -1i))), ~select(vec4<i32>(var_1.a.x, var_3.c.x, 6228i, -33683i), vec4<i32>(-9179i, var_3.c.x, var_3.a.x, -16431i), false)));
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    global0 = array<Struct_1, 30>();
    let var_0 = select(u_input.a.yy, vec2<i32>(_wgslsmith_mult_i32(func_3(arg_0), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x) >> (u_input.c % 32u)), ~(-1i)), select(vec2<bool>(all(!vec4<bool>(arg_0.b, arg_0.a, false, arg_0.b)), true), select(select(!vec2<bool>(arg_0.a, arg_0.a), !vec2<bool>(true, arg_0.b), any(vec3<bool>(arg_0.a, true, false))), !vec2<bool>(arg_0.a, arg_0.a), select(!vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, true), all(vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b)))), false));
    var var_1 = -9762i;
    global0 = array<Struct_1, 30>();
    let var_2 = global0[_wgslsmith_index_u32(u_input.c, 30u)];
    return _wgslsmith_sub_vec4_i32(~(vec4<i32>(var_2.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c.x, -24878i), vec2<i32>(15351i, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_2.c.x, var_2.c.x, 0i), vec4<i32>(0i, u_input.a.x, var_0.x, -70014i)), _wgslsmith_sub_i32(2147483647i, var_0.x)) ^ select(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a.x, 43197i, 2147483647i, var_2.c.x), vec4<i32>(22522i, var_2.c.x, u_input.a.x, var_2.c.x)), vec4<i32>(var_2.c.x, 2844i, 2147483647i, var_0.x), select(vec4<bool>(arg_0.b, false, true, true), vec4<bool>(arg_0.a, false, false, true), true))), ~(-select(vec4<i32>(34811i, -2147483647i, var_2.a.x, var_0.x), vec4<i32>(u_input.a.x, var_2.c.x, var_2.c.x, var_2.c.x), arg_0.b) >> (~vec4<u32>(0u, u_input.b.x, arg_0.c, arg_0.c) % vec4<u32>(32u))));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(658f, 521f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-365f + 550f) - _wgslsmith_f_op_f32(f32(-1f) * -1729f)))), -1813f);
    let var_1 = u_input.b.x >> (arg_0 % 32u);
    var var_2 = _wgslsmith_sub_vec3_u32(select(vec3<u32>(arg_0, u_input.c, 1u), _wgslsmith_div_vec3_u32(u_input.b, min(~vec3<u32>(var_1, u_input.c, 23586u), vec3<u32>(arg_0, arg_0, 43981u))), any(vec2<bool>(true, true))), u_input.b);
    return Struct_1(vec2<i32>(0i, -1i), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_0)))), vec2<i32>(u_input.a.x, func_3(Struct_2(false, var_0 <= var_0, 69556u))));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<f32>, arg_3: vec2<i32>) -> Struct_1 {
    global0 = array<Struct_1, 30>();
    var var_0 = arg_1;
    let var_1 = func_4(~9965u, firstTrailingBit(abs(func_2(Struct_2(false, false, arg_0.x)) >> (~vec4<u32>(arg_0.x, 4294967295u, 1u, 0u) % vec4<u32>(32u)))), ~_wgslsmith_mult_i32(arg_3.x, firstTrailingBit(arg_3.x) << ((arg_0.x | 9140u) % 32u)));
    global0 = array<Struct_1, 30>();
    let var_2 = countOneBits(4294967295u);
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    let var_0 = global0[_wgslsmith_index_u32(arg_1, 30u)];
    var var_1 = u_input.b.x;
    return func_4(u_input.b.x, vec4<i32>(func_2(Struct_2(true, false, 1u)).x & 20863i, _wgslsmith_mult_i32(-2147483647i, 0i >> (_wgslsmith_mod_u32(arg_1, arg_1) % 32u)), _wgslsmith_add_i32(u_input.a.x >> ((0u ^ arg_1) % 32u), u_input.a.x), ~_wgslsmith_div_i32(arg_0.a.x, arg_0.a.x)), var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    var var_0 = global0[_wgslsmith_index_u32(~u_input.b.x & u_input.b.x, 30u)];
    var_0 = func_5(func_1(u_input.b.yz, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * 1493f) * _wgslsmith_f_op_f32(round(var_0.b))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -477f) * vec2<f32>(var_0.b, var_0.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-381f, -441f) + vec2<f32>(942f, -171f))))), u_input.a.yy), reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.c, 19340u), vec3<u32>(42091u, u_input.c, 4294967295u), u_input.b)), ~firstTrailingBit(vec3<u32>(u_input.c, u_input.b.x, 4294967295u)))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.c, _wgslsmith_add_u32(u_input.b.x, _wgslsmith_sub_u32(~(~4294967295u), abs(1u)))), 30u)];
    global0 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.c.x, var_0.a.x, 23051i) & vec3<i32>(-2147483647i, var_0.a.x, -41914i), abs(u_input.a)), -vec3<i32>(17806i, var_0.c.x, u_input.a.x) & -vec3<i32>(-1i, 8662i, -37160i), vec3<bool>(true, true, true)), vec4<u32>(u_input.b.x, u_input.c, u_input.c, 1u | _wgslsmith_mult_u32(4294967295u, u_input.c)));
}

