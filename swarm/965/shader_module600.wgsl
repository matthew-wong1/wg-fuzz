struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -408f), min(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(min(u_input.c, vec3<u32>(u_input.a, u_input.a, 47513u)), vec3<u32>(u_input.a, 21415u, u_input.c.x)), u_input.c), vec3<u32>(13529u, abs(~u_input.c.x), ~(~u_input.a))), Struct_3(firstLeadingBit(u_input.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), -214f, _wgslsmith_f_op_f32(round(315f)), _wgslsmith_f_op_f32(round(-254f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1166f) + 687f));
    global0 = array<vec3<bool>, 10>();
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-226f)), 2243f, !(false & (false != any(vec2<bool>(true, false))))));
    global0 = array<vec3<bool>, 10>();
    var_1 = var_0.a;
    return !(!select(vec2<bool>(true, true), vec2<bool>(true, select(true, false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a <= var_0.b.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> Struct_3 {
    var var_0 = vec3<u32>(u_input.a, _wgslsmith_add_u32((_wgslsmith_div_u32(u_input.d.x, 4294967295u) | abs(u_input.d.x)) | ((u_input.d.x ^ 4294967295u) ^ ~27052u), ~_wgslsmith_div_u32(91095u ^ u_input.c.x, ~1u)), u_input.a);
    var var_1 = select(select(select(vec2<bool>(true, true), !func_3(vec2<i32>(u_input.b.x, u_input.b.x), vec3<f32>(282f, arg_1, -1470f)), true), vec2<bool>(true, true), vec2<bool>(true, false)), !func_3(_wgslsmith_sub_vec2_i32(-vec2<i32>(2147483647i, u_input.b.x), u_input.b ^ arg_0), vec3<f32>(arg_1, _wgslsmith_div_f32(arg_1, arg_1), -1334f)), vec2<bool>(true, all(vec4<bool>(true, arg_0.x < u_input.b.x, true, var_0.x <= 4294967295u))));
    var var_2 = !(521f <= _wgslsmith_f_op_f32(exp2(arg_1)));
    var var_3 = 1i;
    var_3 = 2147483647i;
    return Struct_3(vec4<u32>(~(~(~u_input.c.x)), ~abs(_wgslsmith_clamp_u32(u_input.a, var_0.x, 57598u)), _wgslsmith_dot_vec2_u32(u_input.c.yz, firstLeadingBit(~vec2<u32>(1u, u_input.d.x))), 7475u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(394f, _wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_div_f32(arg_1, -1135f), _wgslsmith_f_op_f32(min(arg_1, arg_1))))))));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_div_f32(612f, _wgslsmith_f_op_f32(arg_2.b.x + -1816f))), vec3<u32>(max(4294967295u, 1u), 4294967295u, _wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, arg_2.a.x, arg_2.a.x), arg_2.a.yxy), select(u_input.c, arg_2.a.wyw, vec3<bool>(true, false, false)), 62714i > arg_1.x), vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(4294967295u, arg_0, u_input.d.x, arg_0)), arg_0 << (1u % 32u)))), arg_2, _wgslsmith_f_op_f32(-arg_2.b.x));
    return Struct_1(_wgslsmith_mod_u32(_wgslsmith_add_u32(max(_wgslsmith_add_u32(8190u, u_input.a), ~u_input.a), 3210u), _wgslsmith_div_u32(19549u, ~(~50369u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_2.b.x))))))), reverseBits(4294967295u));
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<bool>, 10>();
    global0 = array<vec3<bool>, 10>();
    let var_0 = 1u;
    global0 = array<vec3<bool>, 10>();
    var var_1 = Struct_5(func_4(~u_input.d.x, abs(_wgslsmith_div_vec2_i32(vec2<i32>(9259i, -1i), vec2<i32>(-12548i, -5263i))), func_2(u_input.b, 1f)), 128376u & ~u_input.c.x);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 10>();
    let var_0 = ~_wgslsmith_sub_u32(~1u, u_input.c.x);
    let var_1 = Struct_2(Struct_1(_wgslsmith_mult_u32(u_input.c.x & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 385u, u_input.a), vec3<u32>(5947u, var_0, 55992u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, var_0), u_input.c)), -1023f, firstLeadingBit(1u)), ((vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)) & _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(45537i, u_input.b.x, -1i)), select(vec3<i32>(u_input.b.x, 13796i, -40290i), vec3<i32>(u_input.b.x, -1i, 40940i), vec3<bool>(false, true, true)))) << (reverseBits(u_input.d.xyy) % vec3<u32>(32u)), func_1());
    global0 = array<vec3<bool>, 10>();
    var var_2 = var_1;
    var_2 = var_1;
    var_2 = Struct_2(Struct_1(reverseBits(~(var_2.a.c & 71911u)), 977f, u_input.c.x & var_1.a.a), select(_wgslsmith_mod_vec3_i32(-var_2.b, firstLeadingBit(-var_2.b)), firstLeadingBit(var_1.b), any(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)))), func_4(var_1.c.c, -(-vec2<i32>(u_input.b.x, var_2.b.x) << (u_input.d.zw % vec2<u32>(32u))), Struct_3(firstLeadingBit(_wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(u_input.a, 0u, var_1.c.a, var_0))), vec4<f32>(var_1.c.b, 1f, _wgslsmith_div_f32(var_1.c.b, 170f), _wgslsmith_f_op_f32(step(var_1.a.b, -712f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(var_1.b.yy, vec2<i32>(-1i, u_input.b.x & ~var_2.b.x), vec2<i32>(~u_input.b.x, var_2.b.x)), -39940i, firstTrailingBit(reverseBits(vec2<i32>(var_1.b.x, firstLeadingBit(36225i)))), -311f, _wgslsmith_f_op_f32(-var_1.a.b));
}

