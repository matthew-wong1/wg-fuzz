struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(53124u, 36109u), vec2<u32>(56073u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 47679u), vec2<u32>(1u, 1u), vec2<u32>(73450u, 27942u), vec2<u32>(12029u, 100791u), vec2<u32>(4294967295u, 0u), vec2<u32>(26314u, 1u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = arg_0.x ^ 4294967295u;
    var_0 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(arg_0.x, u_input.c.x), _wgslsmith_sub_u32(abs(arg_0.x), abs(u_input.c.x))), u_input.c.x, arg_0.x) | (_wgslsmith_mult_u32(arg_0.x, _wgslsmith_div_u32(firstLeadingBit(u_input.c.x), arg_0.x)) & firstTrailingBit(~(u_input.c.x >> (61283u % 32u))));
    global1 = array<vec2<u32>, 12>();
    var var_1 = vec3<u32>(4294967295u, 51072u, arg_0.x);
    var var_2 = ~1i;
    return vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -590f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1359f)) - global0.x)));
}

fn func_3() -> vec2<bool> {
    global1 = array<vec2<u32>, 12>();
    global1 = array<vec2<u32>, 12>();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-166f, global0.x, global0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-773f, -473f, -551f)), vec3<f32>(624f, -547f, 1000f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))))));
    global1 = array<vec2<u32>, 12>();
    var var_0 = ~min(vec3<i32>(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(24306i, -2147483647i), vec2<i32>(u_input.a, u_input.a)) << (9517u % 32u), 1i), u_input.b.ywz);
    return select(!(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), false))), vec2<bool>(false, global0.x != -445f), !(!vec2<bool>(all(vec2<bool>(true, true)), true)));
}

fn func_2(arg_0: f32) -> vec3<f32> {
    var var_0 = Struct_3(2147483647i << (u_input.c.x % 32u));
    var var_1 = Struct_1(~u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, -765f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.yx) - vec2<f32>(arg_0, -626f))))));
    let var_2 = true;
    global1 = array<vec2<u32>, 12>();
    let var_3 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(var_0.a, select(-2147483647i, var_0.a, var_2)), -u_input.b.xx, func_3()), _wgslsmith_mult_vec2_i32(-u_input.b.yw, vec2<i32>(firstTrailingBit(u_input.b.x), ~u_input.b.x))), abs(_wgslsmith_mod_vec2_i32(u_input.b.wz, u_input.b.xz)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(617f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.c.x - -1838f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -1411f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 306f))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-449f, -1080f, var_1.c.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(748f, arg_0, -1000f) - vec3<f32>(1116f, -292f, var_1.c.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, -1270f, -452f) - vec3<f32>(284f, arg_0, arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 12>();
    let var_0 = select(~abs(vec4<u32>(~4294967295u, ~u_input.c.x, u_input.c.x, u_input.c.x)), ~firstLeadingBit(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c.x), vec2<u32>(27784u, u_input.c.x)), firstLeadingBit(u_input.c.x), u_input.c.x)), vec4<bool>(false, true, u_input.c.x >= _wgslsmith_sub_u32(reverseBits(u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(6785u, u_input.c.x, 38277u))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    let var_1 = Struct_1(firstTrailingBit(abs(~var_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(445f, 557f) * 1642f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec2<u32>(_wgslsmith_clamp_u32(0u, u_input.c.x, 63563u), ~var_0.x), Struct_2(_wgslsmith_f_op_f32(-925f * -2264f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), global0.x) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(346f, global0.x)), _wgslsmith_f_op_f32(674f - 855f)), global0.x)));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2, _wgslsmith_f_op_vec2_f32(func_1(u_input.c.xy, Struct_2(-658f))).x, global0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-556f, var_2, var_1.c.x))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(309f, var_2, var_1.c.x)))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, global0.x, var_2), vec3<f32>(1180f, var_2, global0.x)) + _wgslsmith_f_op_vec3_f32(func_2(var_1.b)))))));
    var var_3 = -323f;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(var_0.x, 1u) & u_input.c.wy, ~(abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, var_1.a, u_input.c.x), var_0.yxw)) ^ vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, var_1.a, 18156u), vec3<u32>(46865u, var_1.a, var_0.x)), 1u, select(37679u, 27766u, true))), _wgslsmith_clamp_i32(u_input.b.x, min(-43490i, 1i) ^ select(u_input.b.x, 2147483647i, true), -u_input.a >> (var_1.a % 32u)) << (4294967295u % 32u));
}

