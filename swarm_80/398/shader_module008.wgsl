struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_2) -> u32 {
    var var_0 = ~(reverseBits(max(min(2147483647i, arg_0), 2147483647i)) | min((arg_2.a.a & arg_0) << (_wgslsmith_add_u32(arg_2.b.x, arg_2.b.x) % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, arg_0), vec3<i32>(arg_0, u_input.b, arg_0))));
    var_0 = -max(_wgslsmith_add_i32(firstLeadingBit(arg_2.c.x), 0i), -1i & arg_0);
    let var_1 = vec3<bool>(all(select(arg_1, arg_1, arg_1.x)) && arg_1.x, !(arg_2.b.x == ~arg_2.b.x), true);
    var_0 = _wgslsmith_dot_vec2_i32(arg_2.c, arg_2.c);
    global0 = array<vec4<f32>, 28>();
    return _wgslsmith_div_u32(~(~arg_2.b.x), abs(_wgslsmith_add_u32(~arg_2.b.x, _wgslsmith_mod_u32(arg_2.b.x, arg_2.b.x))) | ~(~(arg_2.b.x << (arg_2.b.x % 32u))));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    global0 = array<vec4<f32>, 28>();
    var var_0 = countOneBits(_wgslsmith_mult_u32(arg_0.b.x, func_3(1i, vec4<bool>(true, true, true, true), Struct_2(arg_0.a, countOneBits(arg_0.b), ~vec2<i32>(u_input.b, 2147483647i)))));
    var var_1 = select(!vec4<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false))), any(vec3<bool>(false, false, true)) && all(vec3<bool>(false, true, false)), true, true), !(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false))), select(vec4<bool>(true, all(vec2<bool>(true, true)), true, true), select(vec4<bool>(false, true, true, any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), (35700i & u_input.b) != ~1i), vec4<bool>(true, true, _wgslsmith_sub_i32(0i, arg_0.a.a) == 1i, all(vec4<bool>(true, true, true, true)))));
    var_1 = vec4<bool>(!(!var_1.x), !(!all(select(vec3<bool>(true, true, var_1.x), var_1.zww, vec3<bool>(true, false, var_1.x)))), var_1.x, var_1.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1150f))));
    return Struct_3(Struct_1(0i));
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = arg_0.x;
    return func_2(Struct_2(Struct_1(u_input.a.x), vec3<u32>(0u & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 32206u, 43071u, 58078u), vec4<u32>(6098u, 73848u, 0u, 82889u)), 65907u, ~(~20786u)), select(-u_input.a, vec2<i32>(_wgslsmith_div_i32(1i, u_input.a.x), -1i), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<f32>(151f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-485f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(240f, -994f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -575f)));
    let var_1 = Struct_2(Struct_1(~(-10439i)), reverseBits(vec3<u32>(func_3(-var_0.a.a, select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true), Struct_2(Struct_1(var_0.a.a), vec3<u32>(41899u, 4294967295u, 4294967295u), u_input.a)), func_3(abs(var_0.a.a), vec4<bool>(false, false, true, true), Struct_2(var_0.a, vec3<u32>(41223u, 21840u, 0u), vec2<i32>(u_input.a.x, -10885i))), 9482u)), -firstTrailingBit(reverseBits(-vec2<i32>(1i, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0i, func_1(vec3<f32>(_wgslsmith_div_f32(1447f, -927f), -1723f, _wgslsmith_f_op_f32(min(990f, -721f)))).a.a, firstLeadingBit(var_0.a.a), 0i), -1137f, var_1.c, select(_wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, var_0.a.a, -23084i), vec3<i32>(var_0.a.a, u_input.a.x, -15924i)), ~(~vec3<i32>(u_input.a.x, var_0.a.a, -21290i))), func_2(Struct_2(func_2(var_1).a, _wgslsmith_clamp_vec3_u32(var_1.b, var_1.b, var_1.b), vec2<i32>(var_1.a.a, -1i))).a.a, true), ~(~(~vec3<i32>(-1i, -15431i, 1i))));
}

