struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> u32 {
    let var_0 = false;
    global0 = array<vec3<i32>, 12>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(945f)), !any(!select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(true, true, var_0, false), var_0)), -200f, 1i);
    var var_2 = var_1.d ^ u_input.a.x;
    var var_3 = var_1;
    return u_input.d.x;
}

fn func_3(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(559f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -137f), _wgslsmith_f_op_f32(f32(-1f) * -1213f)))))), true, -1350f, ~(~(-32172i)));
    var var_1 = _wgslsmith_div_f32(var_0.c, var_0.a);
    let var_2 = arg_0;
    var_1 = -305f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.a));
    return Struct_2(var_0.d, 67836u <= ~u_input.d.x, Struct_1(-1431f, !any(select(vec4<bool>(false, var_0.b, false, true), vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(var_0.b, false, true, true))), -1309f, u_input.b.x), -1104f, 4294967295u);
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d, -477f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.c, 146f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.c, arg_0.c.c)))))))));
    let var_1 = Struct_4(vec4<i32>(_wgslsmith_add_i32(0i, countOneBits(u_input.c)) & _wgslsmith_mult_i32(-29778i, _wgslsmith_mult_i32(1i, 42074i)), countOneBits(arg_0.a), -2147483647i, i32(-1i) * -59669i));
    global0 = array<vec3<i32>, 12>();
    let var_2 = func_3(u_input.d.x);
    var var_3 = Struct_3(Struct_2(_wgslsmith_mod_i32(1i, -2361i), !(arg_1 || true) & all(!vec4<bool>(arg_1, arg_0.b, var_2.b, arg_0.b)), func_3(u_input.d.x).c, -679f, min(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e, 0u, 1u), ~u_input.d.zzy), 58451u)), abs(arg_0.e));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(-var_2.d)));
}

fn func_1() -> vec2<u32> {
    var var_0 = (u_input.c & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x ^ u_input.c, -4419i, reverseBits(-2147483647i)), vec3<i32>(_wgslsmith_mod_i32(42370i, u_input.e.x), _wgslsmith_clamp_i32(-45329i, -1i, 2147483647i), -40329i))) > -5181i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_4(func_3(func_2()), false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-423f)), _wgslsmith_div_f32(-809f, 923f)) * _wgslsmith_div_f32(-752f, -174f))));
    var var_2 = select(select(select(vec3<bool>(true, true, any(vec4<bool>(false, false, false, false))), vec3<bool>(false, any(vec4<bool>(true, true, false, true)), any(vec4<bool>(true, true, false, true))), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, (-34424i ^ u_input.c) < countOneBits(-13791i)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), vec3<bool>(true, true, true), vec3<bool>(true, select(true, func_3(~4294967295u).c.b, true), false));
    var var_3 = any(select(select(vec3<bool>(true, !var_2.x, true), vec3<bool>(u_input.b.x >= u_input.a.x, !var_2.x, any(var_2.yz)), false), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, false, false)), select(vec3<bool>(true, var_2.x, false), vec3<bool>(var_2.x, false, var_2.x), true), select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, var_2.x, var_2.x))), select(!vec3<bool>(false, var_2.x, var_2.x), !vec3<bool>(true, false, var_2.x), any(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), var_2.x), all(!vec4<bool>(var_2.x, false, var_2.x, false)) && false));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-401f - var_1.x));
    return ~vec2<u32>(_wgslsmith_add_u32(0u, _wgslsmith_div_u32(65219u, u_input.d.x)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(59323u, u_input.d.x), func_2(), 19111u & u_input.d.x)) >> (u_input.d.ww % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(reverseBits(abs(func_1())), u_input.d.yw << (_wgslsmith_sub_vec2_u32(u_input.d.wz, _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 74290u), vec2<u32>(u_input.d.x, u_input.d.x), u_input.d.yz)) % vec2<u32>(32u)), !(u_input.d.x <= 2446u) | all(vec4<bool>(true, true, true, true)));
    var var_1 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, var_0.x), var_0, var_0), _wgslsmith_sub_vec2_u32(~u_input.d.xy, var_0)), reverseBits(~var_0));
    var var_2 = -firstTrailingBit(2147483647i);
    var_1 = select(~u_input.d.wy | reverseBits(~(~u_input.d.xy)), _wgslsmith_mult_vec2_u32(firstTrailingBit(u_input.d.ww) & vec2<u32>(12171u, 0u), ~_wgslsmith_sub_vec2_u32(u_input.d.zy, vec2<u32>(u_input.d.x, 46887u))) >> (var_0 % vec2<u32>(32u)), !select(vec2<bool>(true, u_input.d.x > var_1.x), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    var var_3 = ~firstTrailingBit(23642i);
    let var_4 = -2147483647i;
    let var_5 = Struct_4(~u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

