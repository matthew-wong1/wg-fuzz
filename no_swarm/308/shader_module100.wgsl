struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    global1 = vec2<bool>(!(!(global1.x && !var_0.d.x)), true);
    global0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1027f), global0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(abs(-1147f))) * vec2<f32>(global0.x, _wgslsmith_f_op_f32(floor(arg_1.b)))))));
    let var_1 = !(!vec2<bool>(true, any(select(vec4<bool>(true, false, var_0.d.x, global1.x), vec4<bool>(false, false, arg_1.d.x, true), var_0.d.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)));
    return -2792f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-623f, _wgslsmith_f_op_f32(min(arg_1.b, 2088f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-624f, _wgslsmith_f_op_f32(-arg_0.b))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-321f))), arg_0.b)));
    let var_0 = arg_2.b;
    let var_1 = ~(~u_input.c) | ~vec4<u32>(abs(arg_2.a.x), abs(max(u_input.b.x, 23412u)), arg_2.a.x, ~(52111u >> (arg_1.a.x % 32u)));
    global1 = arg_0.d.yy;
    global1 = arg_1.d.zy;
    return reverseBits(arg_2.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    let var_0 = arg_1.b;
    global1 = arg_0.d.zy;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), arg_1.b);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b) * _wgslsmith_f_op_f32(-2025f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-131f - -724f) * arg_0.b)))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> i32 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-383f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) + _wgslsmith_f_op_f32(func_2(vec3<u32>(76243u, 1u, 1u), Struct_1(vec3<u32>(4294967295u, arg_0.a.x, arg_0.a.x), -1506f, arg_0.c, arg_0.d))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1971f * 1480f) * arg_0.b))));
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1617f, -2093f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b)), arg_0.b))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(func_2(min(u_input.b.zwy, vec3<u32>(0u, arg_2, 62813u)), arg_0))))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(func_3(Struct_1(vec3<u32>(arg_2, arg_2, 44783u), -291f, arg_0.c, arg_0.d), Struct_1(vec3<u32>(46668u, u_input.b.x, arg_2), -280f, arg_0.c, vec3<bool>(arg_0.d.x, true, global1.x)), Struct_1(u_input.c.yyw, 1000f, 2147483647i, arg_0.d), ~arg_0.a.yz), 601f, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.c, -4430i, 2147483647i), vec4<i32>(arg_1, arg_0.c, arg_0.c, arg_0.c)), arg_0.d), Struct_1(abs(vec3<u32>(1u, u_input.a, arg_2)), global0.x, arg_1, select(!vec3<bool>(global1.x, arg_0.d.x, true), vec3<bool>(arg_0.d.x, arg_0.d.x, false), all(vec4<bool>(global1.x, false, true, false)))), -1i, Struct_1(firstTrailingBit(arg_0.a) & _wgslsmith_mult_vec3_u32(u_input.b.yxx, u_input.c.zyx), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(abs(-1586f))), max(arg_1 >> (u_input.c.x % 32u), -24491i), select(arg_0.d, arg_0.d, true)))), _wgslsmith_f_op_f32(arg_0.b + arg_0.b));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-697f, -834f), vec2<f32>(-268f, global0.x)))))));
    let var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(abs(vec4<u32>(71712u, arg_2, u_input.b.x, arg_0.a.x))), ~vec4<u32>(arg_0.a.x, 46830u, u_input.b.x, arg_2), ~_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(1u, arg_0.a.x, arg_0.a.x, arg_2), u_input.c)), ~u_input.c >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.a), u_input.b >> (vec4<u32>(1u, arg_0.a.x, 1u, arg_0.a.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, arg_0.a.x, 0u, arg_2), vec4<u32>(arg_2, arg_0.a.x, 1u, 5737u))) % vec4<u32>(32u))), ~(vec4<u32>(~arg_2, 1u, firstTrailingBit(arg_0.a.x), _wgslsmith_clamp_u32(u_input.a, 13803u, u_input.a)) & u_input.b));
    return -6100i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(max(abs((vec4<i32>(-340i, 67841i, -38596i, 415i) << (vec4<u32>(u_input.a, 7701u, u_input.b.x, u_input.c.x) % vec4<u32>(32u))) | -vec4<i32>(-5615i, -1i, -2147483647i, -2147483647i)), vec4<i32>(_wgslsmith_sub_i32(func_1(Struct_1(vec3<u32>(u_input.b.x, 4294967295u, u_input.c.x), -122f, -1i, vec3<bool>(true, false, global1.x)), -22149i, 1u), _wgslsmith_div_i32(0i, -1i)), -1i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -18301i), vec2<i32>(-1i, -9480i))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(41418i, 2147483647i), vec2<i32>(44177i, 21444i)), vec2<i32>(-1i, -2147483647i)))));
    var var_1 = global1.x;
    var var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_sub_u32(u_input.c.x, min(~u_input.a, _wgslsmith_dot_vec2_u32(u_input.b.ww, vec2<u32>(u_input.c.x, u_input.c.x))))), max(~func_3(Struct_1(vec3<u32>(0u, u_input.b.x, 18665u), global0.x, var_0.x, vec3<bool>(true, global1.x, false)), Struct_1(vec3<u32>(1u, 20543u, 14044u), global0.x, var_0.x, vec3<bool>(global1.x, global1.x, global1.x)), Struct_1(vec3<u32>(46599u, u_input.c.x, 37638u), -880f, -23589i, vec3<bool>(global1.x, global1.x, global1.x)), u_input.c.yz).zy, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(59262u, 15212u), ~u_input.c.x), u_input.c.wx)));
    let var_3 = _wgslsmith_div_i32(var_0.x, var_0.x);
    var_2 = u_input.b.yz;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, global0.x, 1000f), vec3<f32>(global0.x, 1000f, global0.x))))))));
    var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(112f, -938f, -1000f) - vec3<f32>(1103f, var_4.x, -2144f)) - vec3<f32>(-420f, -384f, var_4.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1560f, 965f, 685f), vec3<f32>(global0.x, -839f, -394f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1864f, var_4.x, -453f)), !global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zyy, max(-15611i, ~var_3));
}

