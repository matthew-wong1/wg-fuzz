struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec4<i32> {
    let var_0 = vec4<i32>(-2147483647i, abs(~(min(-1i, 37103i) << (~u_input.c % 32u))), _wgslsmith_add_i32(select(-(-2147483647i & arg_1.a.a.x), -2147483647i, true), ~(i32(-1i) * -15046i)), _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_1.a.a.x, 502i, -1i), vec4<i32>(2147483647i, -227i, arg_1.a.a.x, u_input.a.x)), ~vec4<i32>(u_input.a.x, arg_2.a.x, -2147483647i, 18191i))), -vec4<i32>(_wgslsmith_sub_i32(0i, -13516i), reverseBits(u_input.a.x), 8360i, 21624i)));
    return -_wgslsmith_mult_vec4_i32(var_0, ~(-(vec4<i32>(u_input.a.x, -1i, -5248i, arg_1.a.a.x) | vec4<i32>(var_0.x, u_input.a.x, -1i, var_0.x))));
}

fn func_2() -> Struct_1 {
    let var_0 = ~(-(~func_3(-1157f, Struct_2(Struct_1(u_input.a, -449f)), Struct_1(u_input.a, 1692f), 0u) >> (~vec4<u32>(4294967295u, 84620u, u_input.b, 0u) % vec4<u32>(32u))));
    var var_1 = !any(vec3<bool>(false, true, true));
    global0 = -47067i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1954f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(609f - -198f)), 307f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1780f)))));
    var var_3 = _wgslsmith_f_op_f32(ceil(var_2.x));
    return Struct_1(u_input.a, -752f);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> vec4<f32> {
    let var_0 = Struct_2(func_2());
    let var_1 = var_0;
    let var_2 = select(vec3<bool>(true, any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), !vec3<bool>(-516f <= var_1.a.b, any(vec4<bool>(true, false, false, true)), false), vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-922f, var_1.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -149f)) <= 510f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), false));
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.a.x, min(var_1.a.a.x >> (16160u % 32u), _wgslsmith_sub_i32(-1i, arg_2)) << (u_input.c % 32u), var_0.a.a.x, reverseBits(7778i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.a.x, arg_1.a.x, ~19186i, ~var_0.a.a.x) & ~vec4<i32>(arg_1.a.x, arg_1.a.x, var_1.a.a.x, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a.x, arg_0.x << (13049u % 32u), 1i, -arg_0.x), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_2, 0i, arg_1.a.x), vec4<i32>(-24413i, arg_0.x, -53414i, arg_0.x)), abs(vec4<i32>(var_0.a.a.x, arg_0.x, arg_2, -1i)))), countOneBits(vec4<i32>(1i & var_1.a.a.x, arg_1.a.x, arg_2, _wgslsmith_mult_i32(arg_2, 1i)))));
    var var_3 = ~(-2147483647i);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.b, _wgslsmith_f_op_f32(abs(var_0.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.b - var_1.a.b) - _wgslsmith_f_op_f32(var_1.a.b + 848f)), -383f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32) -> bool {
    global0 = 1i;
    let var_0 = all(!vec4<bool>(!all(vec2<bool>(true, false)), false, all(vec2<bool>(true, false)), all(vec3<bool>(true, true, true))));
    global0 = u_input.a.x;
    return all(!select(select(vec4<bool>(var_0, false, var_0, var_0), select(vec4<bool>(true, var_0, true, true), vec4<bool>(true, var_0, false, var_0), var_0), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(false, true, var_0, false), true)), select(!vec4<bool>(true, var_0, var_0, true), vec4<bool>(true, true, false, false), select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(false, var_0, var_0, true), vec4<bool>(true, var_0, var_0, var_0))), select(all(vec2<bool>(true, false)), var_0, var_0 && false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -4292i;
    var var_0 = false;
    var_0 = any(!vec2<bool>(true || any(vec2<bool>(true, false)), true));
    global0 = ~reverseBits(~_wgslsmith_div_i32(1i, 42378i));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1413f + 243f), _wgslsmith_f_op_f32(step(1901f, 460f)), -939f, 188f), vec4<f32>(_wgslsmith_f_op_f32(step(758f, -420f)), _wgslsmith_f_op_f32(-2565f + -1463f), _wgslsmith_f_op_f32(round(-624f)), -281f), vec4<bool>(true, false, any(vec2<bool>(true, true)), true))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-703f, -818f, 437f, 758f), vec4<f32>(-662f, 1119f, 1575f, -385f), vec4<bool>(false, false, true, false))) + vec4<f32>(-1036f, -909f, -220f, 401f)))));
    global0 = u_input.a.x;
    let var_2 = vec4<bool>(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec2<i32>(1i, u_input.a.x), Struct_1(vec3<i32>(u_input.a.x, -37255i, u_input.a.x), var_1.x), u_input.a.x)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(724f, 1749f, var_1.x, var_1.x))))), -48279i), true, _wgslsmith_f_op_f32(f32(-1f) * -471f) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(5738u, _wgslsmith_mod_u32(u_input.c, _wgslsmith_mult_u32(u_input.c, 4294967295u) << (u_input.c % 32u)), ~4294967295u));
}

