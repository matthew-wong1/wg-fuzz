struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> vec3<f32> {
    var var_0 = ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, 10723u, u_input.a.x, 51845u));
    var_0 = u_input.a.x;
    global0 = array<vec3<i32>, 17>();
    let var_1 = Struct_1(countOneBits(arg_2.b.a));
    var var_2 = vec3<u32>(u_input.a.x, reverseBits(_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_div_vec4_u32(u_input.a << (vec4<u32>(arg_1, 4294967295u, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(arg_1, 0u, u_input.a.x, 0u)))), max(_wgslsmith_dot_vec2_u32(arg_0.a, _wgslsmith_clamp_vec2_u32(arg_0.a << (vec2<u32>(u_input.a.x, arg_1) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), u_input.a.xy), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.a.x, u_input.a.x), arg_0.a))), abs(max(min(1u, 813u), abs(u_input.a.x)))));
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1050f - -655f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-251f)) - _wgslsmith_f_op_f32(192f * -1036f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1248f * -1582f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(201f)) + 1f)))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1625f, 1000f, -1000f)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(466f, -264f, -1204f)), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec2<u32>(u_input.a.x, 1u), Struct_1(u_input.c), 0u, Struct_1(2147483647i)), 52956u, Struct_2(vec2<u32>(u_input.a.x, 1u), Struct_1(2147483647i), 2416u, Struct_1(-26082i)), -2147483647i))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(805f, var_0.x)) * 436f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-648f))), 774f) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1137f) * vec3<f32>(var_0.x, var_0.x, 1000f)))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) * _wgslsmith_f_op_f32(var_0.x - -1720f)), -1167f)))));
    return Struct_2(u_input.a.yx, Struct_1(_wgslsmith_div_i32(~2147483647i, -(0i & u_input.b.x))), ~reverseBits(u_input.a.x), Struct_1(i32(-1i) * -(~1i)));
}

fn func_1(arg_0: u32, arg_1: bool) -> vec4<bool> {
    var var_0 = vec3<i32>(1i, reverseBits(u_input.c), ~u_input.b.x);
    var var_1 = func_2();
    var_0 = u_input.b.xxz;
    let var_2 = vec2<i32>(~var_1.d.a, min(select(-6242i, _wgslsmith_clamp_i32(-1i, u_input.b.x, var_1.b.a), arg_1), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, 1i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, u_input.d, var_1.d.a, -2147483647i), vec4<i32>(var_0.x, 6334i, -2147483647i, 188i)))) | (~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.a, 52188i, var_0.x, var_1.b.a), u_input.b) | -2147483647i));
    return !vec4<bool>(!all(!vec4<bool>(true, arg_1, arg_1, true)), false, arg_1, true);
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: f32) -> i32 {
    var var_0 = -select(u_input.b.yz, ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, 0i), u_input.b.ww), (arg_1.x != false) | true);
    let var_1 = 0i ^ -(~var_0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec3_f32(func_3(func_2(), u_input.a.x, Struct_2(u_input.a.yw, Struct_1(6822i), 1u, Struct_1(-2147483647i)), func_2().b.a)).zy, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2, arg_2))))))) + vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -211f), _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-661f * arg_2))))));
    let var_3 = vec3<bool>(true, true, true);
    let var_4 = min(u_input.a.x, u_input.a.x);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 17>();
    var var_0 = ~_wgslsmith_div_i32(~u_input.d, _wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(i32(-1i) * -2147483647i, u_input.b.x)));
    var_0 = func_4(_wgslsmith_mult_i32(37693i, select(64659i, u_input.c, any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)))), func_1(~_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(43601u, u_input.a.x, u_input.a.x, u_input.a.x)), true), 887f);
    global0 = array<vec3<i32>, 17>();
    var var_1 = func_2();
    let var_2 = ~(~(~var_1.a));
    let var_3 = vec4<bool>(!(~_wgslsmith_mod_u32(var_1.c, 4294967295u) < _wgslsmith_dot_vec3_u32(vec3<u32>(28772u, var_2.x, var_1.c), ~u_input.a.wyy)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), false, !any(func_1(~36770u, true).wy));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_1.c, ~4294967295u, 1u) | u_input.a.www, var_1.a.x);
}

