struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(316f, 1142f, -1000f, 304f, 306f, -593f, 1564f, -1253f, 416f, 443f, -1120f);

var<private> global1: array<vec3<i32>, 20>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> Struct_4 {
    global0 = array<f32, 11>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.e.x), 11u)] * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e.x, 11u)] + -325f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.d, 11u)] + global0[_wgslsmith_index_u32(u_input.e.x, 11u)]))), 1u, all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !(global0[_wgslsmith_index_u32(u_input.e.x, 11u)] <= 508f))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, abs(min(u_input.e.x, u_input.e.x))), max(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), u_input.e)), _wgslsmith_div_u32(~3176u, ~0u))));
    let var_1 = all(vec4<bool>(true, all(select(!vec3<bool>(true, false, var_0.c), select(vec3<bool>(false, false, false), vec3<bool>(var_0.c, true, false), vec3<bool>(false, var_0.c, true)), true)), !(global0[_wgslsmith_index_u32(countOneBits(8502u), 11u)] >= global0[_wgslsmith_index_u32(0u, 11u)]), var_0.c));
    var var_2 = -u_input.a;
    global0 = array<f32, 11>();
    return Struct_4(var_0);
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<u32>) -> u32 {
    let var_0 = func_1().a;
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    let var_1 = -1i;
    var var_2 = firstLeadingBit(-(~vec3<i32>(_wgslsmith_mult_i32(var_1, 1i), _wgslsmith_mod_i32(u_input.c, 11227i), _wgslsmith_mod_i32(var_1, var_1))));
    return abs(var_0.b);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 11u)], global0[_wgslsmith_index_u32(u_input.d, 11u)]))))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1185f, _wgslsmith_f_op_f32(1421f * var_0.x)))) * _wgslsmith_div_f32(-217f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2711f)) - var_0.x)))));
    global1 = array<vec3<i32>, 20>();
    global0 = array<f32, 11>();
    var var_2 = vec3<f32>(516f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-106f * -561f))))), 708f);
    return u_input.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 20>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-603f * global0[_wgslsmith_index_u32(~(~u_input.e.x), 11u)]))));
    global1 = array<vec3<i32>, 20>();
    var var_1 = func_1();
    let var_2 = !(!select(select(vec2<bool>(false, var_1.a.c), vec2<bool>(false, true), vec2<bool>(var_1.a.c, true)), !select(vec2<bool>(false, var_1.a.c), vec2<bool>(var_1.a.c, var_1.a.c), vec2<bool>(var_1.a.c, true)), !vec2<bool>(false, var_1.a.c)));
    var_1 = Struct_4(Struct_1(-2041f, 48336u, any(select(var_2, var_2, var_1.a.c)) & false, reverseBits(~var_1.a.d) | 35770u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, ~(~44161u ^ func_2(vec4<u32>(4888u, var_1.a.d, u_input.e.x, 1u), var_1.a.b, vec4<u32>(0u, var_1.a.d, 0u, var_1.a.d)))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, func_3(u_input.c, true, var_1.a.a), ~var_1.a.b), select(vec3<u32>(4294967295u, u_input.d, u_input.d), vec3<u32>(var_1.a.d, var_1.a.b, 11947u), vec3<bool>(false, var_2.x, false)) >> (~vec3<u32>(43273u, 4294967295u, u_input.e.x) % vec3<u32>(32u))), _wgslsmith_clamp_i32(~u_input.a, -_wgslsmith_div_i32(-26057i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 2147483647i, -2147483647i), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 2147483647i))), _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.c, u_input.a, countOneBits(27997i), u_input.a), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, -1i), vec4<i32>(1i, u_input.a, -2147483647i, u_input.b.x)), -vec4<i32>(u_input.c, u_input.b.x, 57990i, 34084i)))), u_input.b.x);
}

