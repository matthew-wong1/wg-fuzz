struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_2,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(-3314i, -22200i), vec2<i32>(29657i, -46339i), vec2<i32>(1i, 1i), vec2<i32>(71996i, 17370i), vec2<i32>(-1i, 34269i), vec2<i32>(9137i, -5811i), vec2<i32>(1416i, 0i), vec2<i32>(-7261i, 0i), vec2<i32>(673i, 1i), vec2<i32>(2577i, i32(-2147483648)), vec2<i32>(37265i, 0i), vec2<i32>(-31311i, 41661i), vec2<i32>(-23984i, -15985i), vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), -1558i), vec2<i32>(-17787i, -5879i), vec2<i32>(-1i, 58806i), vec2<i32>(1i, -1i), vec2<i32>(-1i, 4919i), vec2<i32>(44419i, 0i), vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(1i, 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(1i, -74086i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, 58139i), vec2<i32>(0i, -21507i), vec2<i32>(2147483647i, 1i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec4<i32>) -> bool {
    var var_0 = ~arg_2.x;
    let var_1 = Struct_4(Struct_1(vec4<i32>(0i, u_input.b.x, arg_1 & -6786i, -14816i)), -1000f);
    var var_2 = firstLeadingBit(vec4<u32>(~(_wgslsmith_clamp_u32(u_input.a.x, 54401u, 4294967295u) & u_input.a.x), firstTrailingBit(u_input.a.x), ~firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, 1u)), 19675u));
    var var_3 = arg_2.xyw;
    var_2 = vec4<u32>(~6372u, ~_wgslsmith_clamp_u32(var_2.x, ~4294967295u, _wgslsmith_mult_u32(~u_input.a.x, 4294967295u)), u_input.a.x, _wgslsmith_sub_u32(85077u, var_2.x));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> i32 {
    var var_0 = all(!vec4<bool>(!func_3(arg_1, 0i, vec4<i32>(-28660i, 6696i, arg_0.a.x, arg_2.a.x)), true, true, true));
    let var_1 = Struct_1(max(abs(arg_2.a) >> (vec4<u32>(u_input.a.x << (0u % 32u), u_input.a.x, ~u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(1i, ~4783i, _wgslsmith_div_i32(arg_2.a.x, -15650i), ~2147483647i) & abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-8819i, arg_0.a.x, arg_2.a.x, -12314i), vec4<i32>(arg_0.a.x, -21410i, arg_2.a.x, 0i)))));
    var var_2 = Struct_3(u_input.a.zx, (~(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)) | _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, 328u, 108694u, 71365u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 54681u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 4305u, 37048u)))) & ~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_2(select(vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, 1i), 10155i, var_1.a.x, max(arg_0.a.x, arg_2.a.x)), -vec4<i32>(91256i, var_1.a.x, arg_2.a.x, 782i), vec4<bool>(true, true, true, true)), ~18701u > ((u_input.a.x >> (u_input.a.x % 32u)) ^ _wgslsmith_add_u32(u_input.a.x, 7335u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-678f, arg_1), vec2<f32>(arg_1, -500f))) - vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-674f * 259f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(arg_1, 1000f, arg_1))))));
    let var_3 = var_2.c.b;
    var_0 = !any(select(!(!vec3<bool>(true, var_2.c.b, false)), vec3<bool>(true, true, true), abs(1i) == var_2.c.a.x));
    return _wgslsmith_add_i32(-_wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, var_2.c.a.x), 1i), arg_0.a.x);
}

fn func_1() -> f32 {
    let var_0 = 4294967295u;
    var var_1 = Struct_1((vec4<i32>(max(u_input.b.x, -2147483647i), i32(-1i) * -1i, ~u_input.b.x, -2147483647i) & (u_input.b | _wgslsmith_add_vec4_i32(u_input.b, u_input.b))) & _wgslsmith_mod_vec4_i32(max(_wgslsmith_mod_vec4_i32(u_input.b, u_input.b), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -10906i))));
    let var_2 = Struct_4(Struct_1(~vec4<i32>(var_1.a.x ^ -40981i, func_2(Struct_1(u_input.b), -1215f, Struct_1(u_input.b)), firstTrailingBit(40126i), _wgslsmith_add_i32(1i, var_1.a.x))), _wgslsmith_f_op_f32(floor(1007f)));
    let var_3 = Struct_2(vec4<i32>(_wgslsmith_mod_i32(~5407i << (_wgslsmith_mult_u32(u_input.a.x, 42551u) % 32u), max(i32(-1i) * -7323i, u_input.b.x)), abs(firstTrailingBit(-var_1.a.x)), u_input.b.x, 2147483647i & _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_2.a.a.x, -6134i, -25632i, 0i)), vec4<i32>(-20522i, var_1.a.x, var_1.a.x, u_input.b.x))), true);
    let var_4 = var_2.b;
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    global0 = array<vec2<i32>, 29>();
    var var_1 = vec4<bool>(any(vec3<bool>(true, true, func_3(_wgslsmith_f_op_f32(-var_0), firstLeadingBit(u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, 58432i, 1i)))), select(109998u, _wgslsmith_add_u32(u_input.a.x ^ u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~u_input.b.x != -53821i) >= ~31563u, true, all(select(vec4<bool>(true, select(true, true, false), false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true))));
    global0 = array<vec2<i32>, 29>();
    var_1 = select(select(select(select(select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(false, true, false, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x)), !vec4<bool>(var_1.x, true, var_1.x, false), true), !(!vec4<bool>(var_1.x, var_1.x, true, var_1.x)), true), vec4<bool>(select(true, any(vec4<bool>(false, true, var_1.x, var_1.x)), var_1.x), !(!var_1.x), true, true), !var_1.x), vec4<bool>(var_1.x, select(u_input.b.x, _wgslsmith_sub_i32(-2147483647i, u_input.b.x), !var_1.x) <= firstLeadingBit(-2147483647i), !any(!vec4<bool>(var_1.x, var_1.x, false, var_1.x)), -279i <= _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, 56922i), abs(-12006i))), !var_1.x);
    global0 = array<vec2<i32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x & 42232i, _wgslsmith_div_vec4_u32(firstLeadingBit(reverseBits(min(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(31758u, u_input.a.x, u_input.a.x, 50601u)))), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, countOneBits(u_input.a.x)), u_input.a.x, abs(1u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 29820u, u_input.a.x), u_input.a), ~u_input.a.x))));
}

