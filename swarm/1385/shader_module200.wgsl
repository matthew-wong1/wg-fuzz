struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25>;

var<private> global1: f32 = 779f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> f32 {
    global0 = array<vec3<f32>, 25>();
    var var_0 = _wgslsmith_mult_i32(0i, max(_wgslsmith_add_i32(u_input.a.x, arg_1.d.a), _wgslsmith_mult_i32(arg_3.c.a, u_input.a.x)));
    let var_1 = arg_1.c;
    global0 = array<vec3<f32>, 25>();
    var_0 = abs(-_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(19181i, 34790i, -2147483647i)), -vec3<i32>(-29399i, -1i, -24736i))) << ((abs(~(~u_input.b)) & ~(~(~arg_1.b))) % 32u);
    return arg_0;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-373f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(1390f, Struct_2(Struct_1(-1i, true), u_input.b, vec2<i32>(-2147483647i, 1i), Struct_1(20648i, false), Struct_1(1i, true)), 0u, Struct_3(false, Struct_1(u_input.a.x, true), Struct_1(-2147483647i, false), true, vec3<bool>(true, true, false)))), 1f)), -787f))));
    var var_1 = Struct_1(-u_input.a.x, true);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(623f)));
    let var_2 = u_input.c.xz << (min(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 34561u) ^ _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 31049u), vec2<u32>(37403u, 24126u)), ~countOneBits(vec2<u32>(u_input.b, 121785u))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, 12732u, u_input.b))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, u_input.b)))) % vec2<u32>(32u));
    var_1 = Struct_1(select(-2147483647i, -63513i | firstLeadingBit(var_2.x), var_1.b | !var_1.b), false);
    return Struct_2(Struct_1(var_2.x, all(select(select(vec4<bool>(var_1.b, var_1.b, var_1.b, true), vec4<bool>(var_1.b, var_1.b, true, var_1.b), vec4<bool>(false, var_1.b, false, false)), vec4<bool>(true, true, true, true), true))), ~u_input.b, vec2<i32>(var_1.a, -2147483647i), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, -83374i, 58879i, 42397i), vec4<i32>(-82846i, 0i, 0i, u_input.a.x)) ^ ~(-var_2.x), true), Struct_1(var_1.a, var_1.b && true));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = !all(select(vec4<bool>(any(vec2<bool>(true, false)), true, true, all(vec2<bool>(true, false))), vec4<bool>(true, any(vec4<bool>(false, true, false, true)), u_input.b > u_input.b, any(vec3<bool>(false, true, false))), vec4<bool>(arg_0 > 1715f, false, true, true)));
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(563f + var_0) + _wgslsmith_f_op_f32(500f + var_0)) + var_0)), -1112f));
    let var_2 = func_2();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, arg_0))), -638f))));
    return var_2.e;
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> i32 {
    let var_0 = true;
    let var_1 = ~55754i;
    global0 = array<vec3<f32>, 25>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1361f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(582f * 262f) - _wgslsmith_f_op_f32(-822f * 486f)), true))) - 1759f);
    let var_2 = ~(~(~vec2<u32>(u_input.b, u_input.b) >> (reverseBits(vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))) << ((~vec2<u32>(u_input.b, u_input.b) & ~_wgslsmith_mod_vec2_u32(vec2<u32>(4371u, 0u), vec2<u32>(u_input.b, 41369u))) % vec2<u32>(32u)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_4(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-u_input.a, u_input.a & u_input.c.yyx), countOneBits(-u_input.a)), Struct_3(false, func_1(_wgslsmith_f_op_f32(min(-1266f, 921f))), Struct_1(u_input.c.x & 1i, true), true, select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))));
    let var_1 = Struct_3(!(true || all(vec3<bool>(true, true, true))), func_2().d, func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1087f, 772f)) - _wgslsmith_f_op_f32(round(-698f)))))), false, !select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, false, false, true)), true), vec3<bool>(true, true, true)));
    let var_2 = Struct_4(67820u, Struct_1(~_wgslsmith_dot_vec2_i32(-u_input.c.xw, u_input.a.xy), any(!vec2<bool>(var_1.d, false))), func_2());
    var var_3 = var_2.a ^ abs(_wgslsmith_div_u32(~reverseBits(u_input.b), ~0u));
    global1 = -622f;
    var_3 = ~var_2.a;
    var var_4 = ~(~u_input.c.x);
    var var_5 = Struct_2(func_1(_wgslsmith_f_op_f32(max(-477f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1528f * -567f))))), select(countOneBits(_wgslsmith_add_u32(select(u_input.b, var_2.c.b, var_2.c.d.b), _wgslsmith_add_u32(u_input.b, var_2.a))), ~(4294967295u | _wgslsmith_mod_u32(u_input.b, u_input.b)), var_2.b.b), ~var_2.c.c, var_1.c, func_2().a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(~var_2.a, var_5.b), firstLeadingBit(firstTrailingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_5.c.x, -5674i), vec2<i32>(-1i, -6864i)))));
}

