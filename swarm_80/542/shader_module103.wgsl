struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = -1000f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<f32> {
    var var_0 = select(u_input.a.x < _wgslsmith_div_i32(~(~(-5161i)), ~u_input.a.x), true, any(vec4<bool>(true, true, true, true)));
    let var_1 = Struct_1(-(~(~vec4<i32>(72771i, u_input.b, 1i, u_input.a.x))), vec3<bool>(!(2147483647i > _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, -2147483647i), vec3<i32>(-1i, 1i, 2147483647i))), 18292i != abs(-u_input.b), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true)))), true);
    let var_2 = Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-10728i, reverseBits(u_input.a.x)), reverseBits(var_1.a.x)), var_1.a.zy), ~(firstTrailingBit(-27471i) << ((u_input.c.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 33172u, u_input.c.x), vec3<u32>(34902u, u_input.c.x, 25085u)) % 32u)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-466f, 363f)) - _wgslsmith_f_op_f32(max(-1000f, -443f))))));
    let var_3 = Struct_2(countOneBits(vec2<i32>(var_2.b, u_input.a.x)), select(0i, var_2.a.x, var_2.c <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.c)))), 900f);
    var_0 = var_1.b.x;
    return vec3<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c * var_2.c))))), 2822f, 576f);
}

fn func_2() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-598f, -240f, -1771f) + vec3<f32>(-2432f, 827f, -1829f))))));
    global0 = _wgslsmith_add_i32(1i, u_input.b);
    var var_1 = ~7227i;
    var var_2 = any(select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(false, false, false, false)), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, 1939f < var_0.x, true), select(true, true, false)), !(1u > u_input.c.x)));
    global1 = 524f;
    return vec3<u32>(~1u, ~u_input.c.x, u_input.c.x);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(444f, -1016f)))) + vec2<f32>(_wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(-arg_2)))));
    global0 = u_input.b & u_input.a.x;
    var_0 = _wgslsmith_f_op_vec3_f32(func_3()).yx;
    let var_1 = Struct_2(vec2<i32>(u_input.b, abs(arg_0 | max(-1i, -1i))), ~(-(~(~(-8134i)))), var_0.x);
    global1 = arg_2;
    return Struct_2(max(var_1.a, countOneBits(min(vec2<i32>(-1i, var_1.b), firstLeadingBit(var_1.a)))), ~var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1416f) + _wgslsmith_f_op_f32(-var_1.c)));
}

fn func_1() -> bool {
    global0 = firstLeadingBit(-2147483647i & u_input.b);
    let var_0 = func_4(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), ~func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(548f))));
    global0 = var_0.a.x;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1678f + 1751f), _wgslsmith_f_op_f32(var_0.c - -242f), true)) * _wgslsmith_div_f32(var_0.c, var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c)) + _wgslsmith_div_f32(939f, 140f))), true));
    var var_2 = any(!(!vec3<bool>(true, all(vec2<bool>(false, false)), true)));
    return any(select(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, all(vec2<bool>(false, true)), all(vec4<bool>(false, false, false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), true)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(false, false, true))), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, true), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 36042i;
    var var_1 = firstLeadingBit(-abs(vec4<i32>(~var_0, -1i, var_0 >> (1u % 32u), _wgslsmith_sub_i32(-9893i, var_0))));
    var var_2 = !(!(!func_1()));
    var var_3 = -1i;
    global0 = var_0;
    global0 = 2147483647i;
    global0 = countOneBits(1i);
    let var_4 = ~u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(42952i, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, ~(~(-2147483647i))), vec2<i32>(firstLeadingBit(var_1.x), var_0)), -15602i >> (_wgslsmith_add_u32(63327u, firstTrailingBit(89809u >> (u_input.c.x % 32u))) % 32u), 4294967295u, vec4<i32>(0i, var_0, -var_0, 1i));
}

