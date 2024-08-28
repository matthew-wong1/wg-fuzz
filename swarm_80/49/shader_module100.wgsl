struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32 = 13658u;

var<private> global2: vec4<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1666f * -371f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(140f + global2.x))))));
    global0 = -42401i;
    var var_1 = Struct_1(u_input.a, _wgslsmith_dot_vec3_u32(abs(~(~vec3<u32>(4294967295u, u_input.a.x, 34735u))), u_input.a.zzz), vec4<bool>(select(false, true, true), true, arg_1.x, true), ~u_input.b.x & u_input.b.x);
    var var_2 = Struct_1(~var_1.a, _wgslsmith_sub_u32(~1u, 1u), !vec4<bool>(any(var_1.c.wy), !arg_1.x, true, !all(vec4<bool>(false, var_1.c.x, true, arg_1.x))), u_input.b.x);
    let var_3 = 0u;
    return abs(var_2.a.x);
}

fn func_2() -> vec4<bool> {
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 1770f, -341f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1616f, global2.x, -860f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -159f, 500f, 292f) - vec4<f32>(-206f, 1277f, global2.x, -1202f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1946f, 1000f, 1654f, global2.x), vec4<f32>(global2.x, global2.x, global2.x, global2.x), false)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(880f, -602f, global2.x, -469f) - vec4<f32>(2393f, -1651f, global2.x, 258f)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(round(global2.x))), _wgslsmith_f_op_f32(global2.x * global2.x), -2098f, global2.x)));
    global1 = ~4294967295u;
    var var_0 = func_3(u_input.a.yz, !vec2<bool>(!(-1i >= u_input.b.x), true));
    global0 = min(u_input.b.x, -_wgslsmith_add_i32(i32(-1i) * -u_input.b.x, ~reverseBits(-1i)));
    let var_1 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 63673u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u) << (u_input.a % vec4<u32>(32u)), u_input.a)), firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, vec4<u32>(76241u, u_input.a.x, 8319u, 4294967295u)), u_input.a))), 4294967295u, select(select(vec4<bool>(true, 0i > u_input.b.x, true, global2.x == global2.x), vec4<bool>(any(vec4<bool>(true, false, true, false)), all(vec3<bool>(false, false, false)), true, any(vec2<bool>(true, true))), all(vec2<bool>(false, false))), vec4<bool>(false, true, true, any(vec3<bool>(true, false, true)) || true), select(true, any(vec2<bool>(true, false)), select(false, false, false)) | true), 2147483647i);
    return var_1.c;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_clamp_i32(-14025i, reverseBits(-2147483647i), abs(_wgslsmith_add_i32(select(arg_0.d, arg_0.d, true), -1i))) << (arg_0.b % 32u);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2.x)), global2.x), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(927f - global2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, global2.x, global2.x, -482f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1868f, 1048f, global2.x, global2.x)) * vec4<f32>(360f, 2251f, global2.x, global2.x)))));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(815f + -140f) - _wgslsmith_f_op_f32(trunc(global2.x))))), _wgslsmith_f_op_f32(abs(global2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -104f)), _wgslsmith_f_op_f32(-global2.x));
    let var_0 = all(func_2());
    let var_1 = global2.zzx;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>((_wgslsmith_sub_i32(-22271i, u_input.b.x ^ -2147483647i) << (reverseBits(u_input.a.x) % 32u)) & (i32(-1i) * -2147483647i), 28333i, -20591i);
    let var_1 = false || all(vec4<bool>(true, true, true, true));
    var var_2 = func_1(Struct_1(firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, u_input.a), vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 5613u, 30165u, 4294967295u))), ~abs(~0u), !select(vec4<bool>(true, false, false, var_1), vec4<bool>(true, var_1, var_1, true), true), _wgslsmith_dot_vec2_i32(firstLeadingBit(var_0.zz), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.xy, vec2<i32>(u_input.b.x, -25757i)), vec2<i32>(u_input.b.x, var_0.x)))));
    var var_3 = func_1(func_1(Struct_1(_wgslsmith_mult_vec4_u32(var_2.a, vec4<u32>(u_input.a.x, 1u, var_2.b, var_2.b)), u_input.a.x, select(!var_2.c, var_2.c, true | var_2.c.x), -9986i)));
    var var_4 = Struct_1(var_2.a, u_input.a.x, func_2(), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(firstTrailingBit(-var_2.d), -2147483647i, 20561i));
}

