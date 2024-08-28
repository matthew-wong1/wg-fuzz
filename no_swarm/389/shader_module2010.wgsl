struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(330f, 1279f);

var<private> global1: array<vec3<i32>, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32) -> f32 {
    global1 = array<vec3<i32>, 23>();
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1255f, arg_1)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-919f, _wgslsmith_div_f32(global0.x, -1183f))), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, global0.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), vec2<f32>(-1000f, 1635f), vec2<bool>(true, true))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1362f)))))));
    let var_0 = Struct_2(Struct_1(1i), Struct_1(_wgslsmith_clamp_i32(19062i, ~(-2147483647i & u_input.c.x), -(u_input.c.x & 13950i))), u_input.d, Struct_1(-u_input.c.x), countOneBits(u_input.c.x));
    global1 = array<vec3<i32>, 23>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2058f, 391f, 550f, global0.x), vec4<f32>(arg_1, 613f, 1091f, arg_1))))))) - vec4<f32>(arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), -449f, -333f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-454f))))));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(953f - 1181f), _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(935f, global0.x)) - vec2<f32>(-987f, -365f))) * vec2<f32>(global0.x, -229f)) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-279f * _wgslsmith_f_op_f32(global0.x * global0.x)), -911f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, global0.x)) - vec2<f32>(-167f, -1671f))))));
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.d.x, -705f, u_input.d.x))))) + 312f)));
    global1 = array<vec3<i32>, 23>();
    global1 = array<vec3<i32>, 23>();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x * 173f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(133f))))));
    return Struct_1(-43456i);
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = 739f;
    return ~u_input.d.x;
}

fn func_1() -> vec4<u32> {
    let var_0 = u_input.e.x;
    global1 = array<vec3<i32>, 23>();
    var var_1 = ~vec4<u32>(12403u, _wgslsmith_mod_u32(u_input.a.x, func_4(func_2())), ~_wgslsmith_add_u32(0u, u_input.d.x), _wgslsmith_mult_u32(34156u, firstTrailingBit(0u)));
    global1 = array<vec3<i32>, 23>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-884f, global0.x, all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)))) * -258f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))) - _wgslsmith_f_op_f32(-global0.x)), global0.x);
    return _wgslsmith_mult_vec4_u32(~(~(~u_input.d ^ vec4<u32>(u_input.a.x, var_0, 65637u, u_input.d.x))), _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(~1u, ~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.e.yy), func_4(Struct_1(-5135i))) << (vec4<u32>(abs(var_0), _wgslsmith_mult_u32(1u, 0u), _wgslsmith_sub_u32(var_0, var_1.x), select(var_0, var_1.x, true)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -u_input.c.x, countOneBits(u_input.c.x)), vec4<i32>(abs(2147483647i), u_input.c.x, -u_input.c.x, -49057i)), abs(-16210i), _wgslsmith_sub_i32(1i, u_input.c.x), _wgslsmith_mod_i32(firstTrailingBit(-2147483647i) | _wgslsmith_div_i32(u_input.c.x, 0i), -24537i)) >> (abs(func_1()) % vec4<u32>(32u));
    var var_1 = _wgslsmith_add_i32(select(max(-(var_0.x ^ var_0.x), min(1i, var_0.x)), select(u_input.c.x, -_wgslsmith_mult_i32(-2147483647i, var_0.x), true), any(vec2<bool>(true, true))), 1i);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_3 = u_input.c.x ^ func_2().a;
    var var_4 = 1f;
    var_3 = _wgslsmith_dot_vec2_i32(~vec2<i32>(reverseBits(-40459i), 1i) >> (_wgslsmith_mult_vec2_u32(select(_wgslsmith_clamp_vec2_u32(u_input.b.zx, vec2<u32>(u_input.b.x, 0u), u_input.d.xx), u_input.b.zx, global0.x < 1546f), ~vec2<u32>(u_input.e.x, u_input.a.x)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(-18575i, var_0.x), select(min(var_0.xy, vec2<i32>(-2147483647i, 0i)), _wgslsmith_div_vec2_i32(var_0.zz, vec2<i32>(55524i, 2147483647i)), vec2<bool>(true, true)) ^ var_0.zz));
    let var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(var_5.yz, max(var_5.zz, u_input.a.zx))), ~(~7918u), ~_wgslsmith_mod_u32(var_5.x, 9608u) << (1u % 32u), ~(~var_5.x)), 0u, abs(vec3<i32>(1i, -var_0.x, ~(~var_0.x))), ~u_input.c.zx);
}

