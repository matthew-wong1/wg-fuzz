struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> vec4<bool> {
    let var_0 = u_input.c.x;
    return vec4<bool>(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))) && any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false))), false, true, select(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false))) == true, true, any(vec4<bool>(var_0 > u_input.c.x, true, true, var_0 >= 0u))));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec4<u32> {
    global0 = -u_input.a.x;
    global0 = ~u_input.a.x;
    let var_0 = max(vec3<i32>(u_input.a.x, ~select(1i, 1i, !arg_0.a.b), arg_1), vec3<i32>(~arg_1, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.b.x, 1i, u_input.a.x, 2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(46336i, -34795i, 0i, arg_1), vec4<i32>(-1i, -93160i, 0i, arg_1), vec4<i32>(arg_1, 33039i, u_input.a.x, 1787i))), reverseBits(-vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -79552i))), 1i));
    let var_1 = arg_0;
    let var_2 = !select(!(!vec3<bool>(arg_0.a.a.x, var_1.a.a.x, true)), select(vec3<bool>(true, false, arg_0.a.b | true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, arg_0.a.c), vec3<bool>(false, false, var_1.a.a.x)), select(!vec3<bool>(arg_0.a.c, true, false), func_1().yzw, arg_0.a.b)), !(!(!var_1.a.b)));
    return select(~min(vec4<u32>(1u, _wgslsmith_add_u32(u_input.d, u_input.c.x), u_input.d, ~63990u), vec4<u32>(u_input.c.x, ~u_input.c.x, min(u_input.c.x, u_input.d), 0u)), firstTrailingBit(_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, 0u, 4294967295u)), select(vec4<u32>(u_input.c.x, 67344u, u_input.c.x, 7478u), select(vec4<u32>(16604u, 1u, u_input.d, u_input.d), vec4<u32>(u_input.c.x, u_input.c.x, 60899u, 22626u), var_1.a.b), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.a.a.x, true, false, false), vec4<bool>(arg_0.a.b, var_2.x, false, true))))), vec4<bool>(~(~(-1i)) <= _wgslsmith_mult_i32(~1i, ~var_0.x), true, !arg_0.a.c, arg_0.a.c));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<bool>) -> StorageBuffer {
    let var_0 = func_3(Struct_2(Struct_1(func_1().xy, false || all(arg_2), true)), _wgslsmith_mult_i32(-(-1i >> (u_input.c.x % 32u)), countOneBits(-13131i)));
    global0 = ~u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1396f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1300f), -582f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1056f), _wgslsmith_f_op_f32(sign(-291f))) + _wgslsmith_f_op_f32(ceil(-702f))))));
    var var_2 = u_input.b.x | u_input.b.x;
    var_2 = -_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0, 2147483647i, 1i, arg_0), countOneBits(~vec4<i32>(34822i, arg_0, u_input.b.x, -2147483647i) >> (~vec4<u32>(var_0.x, u_input.c.x, u_input.c.x, 4182u) % vec4<u32>(32u))));
    return StorageBuffer(var_1, ~select(abs(~45995u), ~(0u | u_input.d), true), _wgslsmith_sub_i32(u_input.b.x ^ u_input.a.x, -89505i), firstTrailingBit(vec2<i32>(-1i, 2147483647i)), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_i32(~45651i << (firstTrailingBit(abs(~u_input.d)) % 32u), _wgslsmith_div_i32(_wgslsmith_div_i32(max(_wgslsmith_clamp_i32(u_input.b.x, -20751i, 27038i), -1i & u_input.a.x), u_input.b.x), 1i));
    var var_0 = u_input.c.zz;
    var var_1 = Struct_1(!vec2<bool>(true, ~u_input.a.x <= (u_input.b.x & u_input.b.x)), true, true);
    var var_2 = _wgslsmith_dot_vec3_i32(u_input.b, u_input.b) <= _wgslsmith_mod_i32(0i, reverseBits(-u_input.a.x));
    let var_3 = !var_1.b;
    let x = u_input.a;
    s_output = func_2(_wgslsmith_mod_i32(u_input.b.x, 27627i), 14039u << (u_input.c.x % 32u), select(select(vec4<bool>(var_3, true, select(var_1.a.x, true, false), var_3), func_1(), func_1()), vec4<bool>(any(vec2<bool>(true, var_3)), var_3, any(!vec3<bool>(var_1.c, var_1.c, var_3)), true | select(var_1.c, false, var_1.a.x)), false));
}

