struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32;

var<private> global2: f32 = -155f;

var<private> global3: Struct_3 = Struct_3(false, -53292i, 179f, 1u, Struct_2(-39254i, 1079f, 82128u));

var<private> global4: array<vec3<u32>, 19>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    global1 = reverseBits(23912u);
    global1 = ~global3.d;
    var var_0 = global3.e;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(step(var_0.b, global3.e.b)))))));
    global2 = var_0.b;
    return var_0.b;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: u32, arg_3: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(226f, 1344f, 1582f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-354f, global3.c, -355f), vec3<f32>(-594f, global3.e.b, -974f))))) + vec3<f32>(_wgslsmith_f_op_f32(min(-1541f, _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_div_f32(-2209f, arg_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3.c, arg_0.x))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-465f, 217f, arg_0.x))))))));
    global1 = arg_2;
    global2 = 1000f;
    var var_1 = Struct_3(all(vec4<bool>(-global3.b <= (26280i >> (global3.e.c % 32u)), select(true, all(vec2<bool>(false, global3.a)), true), !global3.a, _wgslsmith_f_op_f32(-arg_0.x) > var_0.x)), global3.b, _wgslsmith_f_op_f32(exp2(global3.e.b)), abs(u_input.b.x << (abs(~35510u) % 32u)), global3.e);
    return vec4<bool>(all(select(!vec4<bool>(global3.a, false, arg_1.x, var_1.a), vec4<bool>(select(false, arg_1.x, var_1.a), global3.a, var_1.a && true, global3.a), 694f <= _wgslsmith_f_op_f32(min(global3.c, -2398f)))), true, arg_1.x, true);
}

fn func_1(arg_0: u32) -> Struct_4 {
    global3 = Struct_3(!global3.a, ~select(global3.b >> ((arg_0 & 64009u) % 32u), u_input.c.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.c, Struct_1(_wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(95642u, global3.d)), global3.b, -u_input.c, -26875i, !vec3<bool>(global3.a, false, false))))), ~(~u_input.b.x), global3.e);
    global0 = u_input.b.x;
    var var_0 = vec4<f32>(global3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2127f))), -1000f, _wgslsmith_f_op_f32(482f + _wgslsmith_f_op_f32(trunc(-1565f))));
    global4 = array<vec3<u32>, 19>();
    return Struct_4(select(!func_3(_wgslsmith_f_op_vec2_f32(-var_0.wy), vec3<bool>(true, true, true), global3.e.c, global3.d > u_input.b.x), vec4<bool>(var_0.x < 1642f, global3.a, true, !(-727f < global3.e.b)), select(select(vec4<bool>(false, false, global3.a, true), select(vec4<bool>(global3.a, global3.a, false, global3.a), vec4<bool>(global3.a, false, true, global3.a), true), select(vec4<bool>(global3.a, global3.a, global3.a, global3.a), vec4<bool>(global3.a, global3.a, false, global3.a), vec4<bool>(false, global3.a, true, false))), vec4<bool>(!global3.a, false, any(vec2<bool>(true, global3.a)), true || global3.a), !(!vec4<bool>(true, true, global3.a, false)))), _wgslsmith_add_u32(min(u_input.b.x, abs(global3.d)) | 4294967295u, 4294967295u), Struct_2(u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -862f)) + -1668f), arg_0), Struct_3(global3.a, u_input.c.x, _wgslsmith_f_op_f32(2326f - -687f), ~abs(_wgslsmith_mod_u32(4294967295u, 104553u)), Struct_2(_wgslsmith_add_i32(global3.e.a, global3.e.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -517f)), firstLeadingBit(u_input.a.x))));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_2 {
    var var_0 = !(!global3.a);
    global4 = array<vec3<u32>, 19>();
    var var_1 = u_input.b.x;
    var var_2 = vec3<bool>(true, false, !(!global3.a));
    var var_3 = _wgslsmith_clamp_i32(firstTrailingBit(-10949i), _wgslsmith_sub_i32(abs(-31617i), u_input.c.x) & arg_0.d.e.a, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(-u_input.c, vec4<i32>(-1i, 14300i, arg_0.d.e.a, arg_0.c.a)), -vec4<i32>(0i, u_input.c.x, -2147483647i, arg_0.d.b), select(-u_input.c, vec4<i32>(u_input.c.x, 2147483647i, -39985i, -1i), !arg_0.a.x)), -_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(u_input.c, u_input.c), vec4<i32>(-2147483647i, u_input.c.x, -21426i, -1i), max(u_input.c, vec4<i32>(global3.b, -1i, -2147483647i, 2259i)))));
    return Struct_2(abs(u_input.c.x & u_input.c.x), global3.e.b, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_u32(58894u, 16300u), 44362i, (max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i), u_input.c), u_input.c | u_input.c) | _wgslsmith_clamp_vec4_i32(vec4<i32>(global3.e.a, -18468i, global3.e.a, 1i), -u_input.c, reverseBits(vec4<i32>(2147483647i, 12032i, -1i, 41372i)))) | (~vec4<i32>(-657i, u_input.c.x, u_input.c.x, u_input.c.x) | _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global3.e.a, 639i, u_input.c.x, 26325i), u_input.c), u_input.c)), global3.b, vec3<bool>(global3.a, false, global3.a));
    let var_1 = !(!(!(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x) >= 2147483647i)));
    var var_2 = firstLeadingBit(_wgslsmith_mod_vec2_i32(-_wgslsmith_mod_vec2_i32(u_input.c.xw << (vec2<u32>(global3.d, global3.d) % vec2<u32>(32u)), -var_0.c.zx), ~_wgslsmith_add_vec2_i32(var_0.c.zw ^ vec2<i32>(var_0.b, global3.e.a), var_0.c.xy)));
    var var_3 = ~var_0.d;
    var var_4 = global3.e;
    let var_5 = func_4(func_1(3506u), func_1(_wgslsmith_add_u32(max(global3.e.c, abs(global3.e.c)), 9937u)).c.c);
    var var_6 = ~_wgslsmith_div_u32(1u & ~var_5.c, max(u_input.a.x, u_input.b.x)) | (var_4.c << (52990u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-183f, -735f, global3.e.b, global3.c), _wgslsmith_div_vec4_f32(vec4<f32>(137f, 1836f, -362f, var_4.b), vec4<f32>(var_4.b, 1000f, var_5.b, var_5.b)), vec4<bool>(false, false, false, var_0.e.x))))));
}

