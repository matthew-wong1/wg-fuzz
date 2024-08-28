struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 9>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    global0 = array<vec2<f32>, 9>();
    global0 = array<vec2<f32>, 9>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -574f), -343f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1283f);
    global0 = array<vec2<f32>, 9>();
    var var_1 = u_input.e.x;
    return max(1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(16665i, max(u_input.a, select(20759i, -33361i, true))), _wgslsmith_div_i32(u_input.a, reverseBits(-2147483647i) >> (min(u_input.d.x, u_input.b.x) % 32u))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(func_3(), select(vec3<i32>(_wgslsmith_mult_i32(-u_input.a, u_input.a), u_input.a | u_input.a, u_input.a), firstTrailingBit(-select(vec3<i32>(1i, 14961i, 41661i), vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<bool>(true, true, true))), vec3<bool>(true, any(vec4<bool>(false, true, false, false)), true)));
    global0 = array<vec2<f32>, 9>();
    global0 = array<vec2<f32>, 9>();
    let var_1 = any(!vec3<bool>(any(vec3<bool>(true, true, true)), 1i <= ~var_0.a, true));
    var_0 = Struct_1(abs(var_0.b.x), vec3<i32>(_wgslsmith_dot_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -2147483647i, -1i), vec4<i32>(-1i, u_input.a, 1313i, 11666i), vec4<i32>(-2147483647i, var_0.a, var_0.b.x, var_0.b.x)), vec4<i32>(var_0.a, u_input.a, var_0.a, var_0.b.x) >> (u_input.d % vec4<u32>(32u)), !vec4<bool>(false, false, var_1, var_1)), ~vec4<i32>(var_0.a, -1i, -1i, var_0.a)), 0i, _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec2_i32(var_0.b.xy, vec2<i32>(u_input.a, u_input.a)) & -25013i, -countOneBits(-36434i))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2495f)) - _wgslsmith_f_op_f32(-2297f - 927f)), _wgslsmith_f_op_f32(step(1883f, 211f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-126f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1945f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(611f - -101f), _wgslsmith_div_f32(-229f, -143f)))), 475f)));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    let var_0 = -1233f;
    var var_1 = arg_1;
    let var_2 = func_2();
    let var_3 = !vec2<bool>(any(vec2<bool>(true, true)), any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))) || any(vec2<bool>(true, true)));
    var var_4 = func_2();
    return u_input.d.x;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<f32>) -> vec4<i32> {
    let var_0 = Struct_1(u_input.a, ~vec3<i32>(firstLeadingBit(2147483647i), -2147483647i, u_input.a) << (~(~u_input.e) % vec3<u32>(32u)));
    global0 = array<vec2<f32>, 9>();
    let var_1 = _wgslsmith_mult_i32(func_3(), u_input.a);
    global0 = array<vec2<f32>, 9>();
    global0 = array<vec2<f32>, 9>();
    return _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(~(~vec4<i32>(var_1, 0i, u_input.a, var_0.a))), (vec4<i32>(-1i) * -vec4<i32>(var_0.b.x, 2147483647i, -5295i, var_1)) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, u_input.c, 4294967295u, 110706u), u_input.d, u_input.d), ~u_input.d) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mult_i32(var_1, 2147483647i), abs(-var_1), ~(var_1 >> (1u % 32u)), _wgslsmith_sub_i32(var_0.b.x, -u_input.a))), ~countOneBits(vec4<i32>(u_input.a, ~21028i, -17001i, u_input.a)));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> f32 {
    var var_0 = func_5(vec2<u32>(53157u, ~func_4(_wgslsmith_div_f32(1284f, -743f), func_2(), Struct_2(Struct_1(1648i, vec3<i32>(u_input.a, u_input.a, u_input.a)), vec4<u32>(u_input.e.x, 36724u, 47767u, 1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 879f, -1000f, arg_1.x) + vec4<f32>(-1042f, 1325f, 888f, -591f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, -1000f, 257f, arg_1.x), vec4<f32>(396f, -1544f, 1426f, arg_1.x), vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1774f, arg_1.x, arg_1.x, arg_1.x)))))))));
    let var_1 = arg_1.x;
    global0 = array<vec2<f32>, 9>();
    var var_2 = u_input.d;
    let var_3 = func_2();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = u_input.a;
    var_0 = _wgslsmith_mult_i32(u_input.a, -1i);
    var var_1 = countOneBits(countOneBits(14465i));
    var_0 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))));
    var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x))), 1138f, 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x) - _wgslsmith_f_op_f32(2954f * var_2.x)), var_2.x)), vec4<f32>(-1335f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-4115i, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, -1336f) * vec3<f32>(var_2.x, 1000f, var_2.x)))) * func_2().a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)), var_2.x) - _wgslsmith_f_op_f32(max(582f, _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x * var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.b.x | 1u, firstLeadingBit(~u_input.e.x)), _wgslsmith_f_op_f32(var_2.x * 561f), 47617u);
}

