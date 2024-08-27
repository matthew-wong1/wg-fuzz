struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(19109u, vec2<f32>(643f, -1509f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = Struct_1(21603u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_0.b))));
    var var_1 = min(-(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -1i, 3575i), vec4<i32>(0i, 1986i, 70020i, 0i)) << ((12255u ^ (arg_0.a ^ 10590u)) % 32u)), -_wgslsmith_sub_i32(1i, ~(-1i)) & select(0i, 0i, arg_1));
    let var_2 = Struct_1(1u, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.b.x, -2088f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x + var_0.b.x), _wgslsmith_f_op_f32(ceil(557f)))), vec2<f32>(1702f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.b.x)) * global1.b.x))));
    let var_3 = !select(vec4<bool>(arg_1, false, true, true), select(vec4<bool>(select(arg_1, arg_1, false), global0.b.x <= -129f, true, all(vec4<bool>(false, true, arg_1, arg_1))), !(!vec4<bool>(arg_1, arg_1, false, false)), vec4<bool>(true, true, false, var_0.b.x > global1.b.x)), vec4<bool>(!(!arg_1), arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(36864u, u_input.c.x, var_2.a), u_input.c.zzy) == (global0.a >> (0u % 32u)), false));
    let var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1587f, _wgslsmith_f_op_f32(global1.b.x - global0.b.x), var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -918f)) * vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_2.b.x), var_0.b.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(min(-130f, -156f)), _wgslsmith_f_op_f32(floor(global0.b.x)), -1530f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1102f, var_0.b.x, -545f, arg_0.b.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.b.x, -341f, global1.b.x, global0.b.x)))))))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -870f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(step(595f, -1219f)))), _wgslsmith_f_op_f32(-568f * _wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.b.x, arg_0.b.x)) + _wgslsmith_f_op_f32(step(898f, 744f))))), (true == (var_2.b.x > _wgslsmith_f_op_f32(floor(arg_0.b.x)))) && true));
}

fn func_2() -> Struct_1 {
    let var_0 = 76073u;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(abs(global1.a), _wgslsmith_f_op_vec2_f32(-global0.b)), !any(vec3<bool>(true, false, false)))) * _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.x), global0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1237f))));
    global0 = Struct_1(u_input.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.b.x, -1048f), vec2<f32>(global0.b.x, 1154f)))))));
    global0 = Struct_1(32805u, var_1);
    global1 = Struct_1(0u, _wgslsmith_f_op_vec2_f32(sign(global0.b)));
    return Struct_1(u_input.c.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2094f)) * _wgslsmith_f_op_f32(floor(global1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), -1052f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(u_input.d, vec2<f32>(1722f, var_1.x)), false))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~(~((u_input.c >> (u_input.c % vec4<u32>(32u))) ^ u_input.c)) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a, arg_1.a, _wgslsmith_add_u32(global0.a, u_input.d), ~arg_1.a), ~firstLeadingBit(vec4<u32>(global0.a, global1.a, u_input.a, 1u)));
    var var_1 = func_2();
    var var_2 = ~arg_1.a >> (~u_input.a % 32u);
    var var_3 = ~_wgslsmith_div_vec2_u32(u_input.e, u_input.c.ww) & u_input.c.xy;
    var var_4 = true;
    return Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-622f, 862f), vec2<f32>(-389f, -512f)))) * vec2<f32>(-1000f, _wgslsmith_div_f32(-224f, global0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(~global0.a, ~u_input.d, 4294967295u, 0u), u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b)));
    global1 = func_1(Struct_1(select(~43836u, ~global0.a, select(18892i, -2147483647i, false) >= (i32(-1i) * -24518i)), global0.b), Struct_1(24647u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -724f)), global1.b.x)));
    var var_1 = u_input.c;
    var_1 = ~(~(u_input.c << (u_input.c % vec4<u32>(32u))));
    let var_2 = func_1(Struct_1(u_input.c.x, _wgslsmith_f_op_vec2_f32(global0.b * vec2<f32>(func_1(Struct_1(u_input.a, global1.b), Struct_1(global1.a, vec2<f32>(global1.b.x, global1.b.x))).b.x, global1.b.x))), func_1(func_2(), Struct_1(u_input.c.x, global1.b)));
    var_0 = var_2;
    var var_3 = func_2().a;
    var_0 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, 38345u), vec2<u32>(var_2.a, 14396u)), var_1.zx), _wgslsmith_sub_u32(0u, var_2.a << (u_input.a % 32u))) | _wgslsmith_dot_vec2_u32(select(~var_1.ww, vec2<u32>(113696u, 1u), vec2<bool>(true, true)), _wgslsmith_div_vec2_u32(u_input.c.xx, u_input.c.xw)), global1.b);
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(-21508i & _wgslsmith_clamp_i32(0i, -1241i, 2147483647i), _wgslsmith_mod_i32(1i, 1i), _wgslsmith_add_i32(-2147483647i << (global0.a % 32u), firstLeadingBit(0i))), 48434u, select((~var_1.yyx ^ _wgslsmith_div_vec3_u32(vec3<u32>(var_4.a, 0u, 15631u), vec3<u32>(var_4.a, global1.a, u_input.e.x))) << (~vec3<u32>(19523u, global0.a, 1u) % vec3<u32>(32u)), ~firstTrailingBit(~vec3<u32>(u_input.a, 0u, u_input.b)), true));
}

