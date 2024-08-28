struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 53540u;

var<private> global1: vec2<f32> = vec2<f32>(492f, -1000f);

var<private> global2: u32;

var<private> global3: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    global2 = 1u;
    global0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~35642u, ~4294967295u, countOneBits(37639u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 54588u), vec3<u32>(u_input.a, u_input.a, 1u))), vec4<u32>(~0u, ~u_input.a, ~12082u, ~u_input.a)), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(16168u, 38317u), reverseBits(u_input.a)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, 1u), 0u ^ u_input.a), 1u >> (~u_input.a % 32u), 4294967295u));
    var var_0 = ~vec2<u32>(~reverseBits(1u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(35643u, u_input.a, 4294967295u, 48362u) ^ vec4<u32>(7503u, u_input.a, 29845u, 4294967295u), vec4<u32>(u_input.a, 1u, 25447u, 4294967295u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 48681u, 26091u, 4294967295u))));
    global0 = firstTrailingBit(~var_0.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global1.x, global1.x)), _wgslsmith_f_op_f32(ceil(2485f)), global1.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1615f), global1.x, -212f) + vec3<f32>(-693f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(1198f - -469f))));
    return -1647f;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> f32 {
    global0 = _wgslsmith_dot_vec2_u32(arg_1.yx, _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~5360u, ~arg_1.x), arg_1.zy ^ ~arg_1.zx), ~(~vec2<u32>(80707u, 4294967295u))));
    let var_0 = 1509f;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(global1.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -640f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(881f - global1.x) * _wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(abs(-1889f)), 1581f);
    return _wgslsmith_f_op_f32(max(var_0, global1.x));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> vec2<i32> {
    let var_0 = -633f;
    let var_1 = vec4<f32>(-523f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * arg_0) * arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, var_0)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.b.x, vec3<u32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_f_op_f32(func_3()))))), -758f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -579f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-665f, var_0)) - _wgslsmith_f_op_f32(var_0 + 1500f)) * _wgslsmith_f_op_f32(-var_0)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(var_1.zww, vec3<f32>(arg_0, -250f, arg_0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(266f, -727f, -195f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, var_0, arg_0) + var_1.wzw))))), all(select(select(select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(false, false, arg_1.x), vec3<bool>(arg_1.x, false, true)), !vec3<bool>(false, arg_1.x, true), 4294967295u < u_input.a), vec3<bool>(false, false, all(vec2<bool>(false, false))), !(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -756f))));
    global0 = 4294967295u;
    global1 = var_1.xy;
    return vec2<i32>(max(u_input.c, -2147483647i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-33101i, u_input.c), 9728i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, all(vec2<bool>(false, true)) && true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), all(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_f32(global1.x * global1.x);
    var_0 = vec4<bool>(u_input.c < _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, u_input.c), func_1(693f, vec2<bool>(true, var_0.x))), u_input.c ^ 1i), var_0.x, var_0.x, u_input.a > 20318u);
    let var_2 = !vec4<bool>(u_input.a <= u_input.a, false, var_0.x, true);
    let var_3 = Struct_1(vec3<f32>(-545f, var_1, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, 926f), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-1806f + global1.x))), true, var_1);
    var var_4 = var_0.x;
    let var_5 = Struct_3(u_input.a ^ u_input.a, u_input.b.x, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.a.x, var_1, 918f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(139f, var_3.c, 1545f)), var_2.yzy)), var_3.b, _wgslsmith_f_op_f32(1831f * global1.x)), min(firstTrailingBit(min(56463u, 1u)), _wgslsmith_add_u32(u_input.a, u_input.a)), var_2.x == true, abs(~vec2<u32>(7747u, u_input.a)), var_3.a));
    var_0 = var_2;
    global3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(-6794i, ~var_5.b, -u_input.c << (_wgslsmith_mod_u32(var_5.a, 8563u) % 32u)), var_5.b, -_wgslsmith_dot_vec3_i32(-(vec3<i32>(65893i, var_5.b, var_5.b) | vec3<i32>(var_5.b, u_input.b.x, u_input.c)), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, var_5.b, var_5.b), vec3<i32>(0i, 2147483647i, 1i)))), _wgslsmith_f_op_f32(sign(750f)));
}

