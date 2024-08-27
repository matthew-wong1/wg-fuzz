struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: Struct_2 = Struct_2(Struct_1(4294967295u, vec2<f32>(-269f, -137f)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_1(global1.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-254f, global1.a.b.x) + global1.a.b)));
    let var_1 = u_input.c;
    var_0 = Struct_1(global1.a.a >> (4294967295u % 32u), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -641f))));
    global0 = u_input.d;
    let var_2 = any(!vec3<bool>(true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false))), true));
    return vec2<bool>(true, true);
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(~select(0u, global1.a.a, false) ^ ~global1.a.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1872f, 1000f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.b.x, -1697f)))))));
    let var_1 = Struct_2(Struct_1(~_wgslsmith_div_u32(1u, 63988u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.b * var_0.a.b), vec2<f32>(global1.a.b.x, -379f)) - vec2<f32>(_wgslsmith_f_op_f32(-850f + 366f), _wgslsmith_f_op_f32(step(-1000f, 108f))))));
    let var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.a.a, 1u, ~4294967295u), vec4<u32>(~var_1.a.a >> (global1.a.a % 32u), 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(35503u, var_0.a.a, 0u), vec3<u32>(127975u, 41146u, 46766u)), ~vec3<u32>(global1.a.a, var_1.a.a, 17134u)), ~0u)), global1.a.a & ~select(~0u, max(var_0.a.a, var_1.a.a), false), min(firstTrailingBit(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.a, 49021u, 1u), vec3<u32>(4294967295u, 0u, var_1.a.a)))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(11011u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.a, 0u, global1.a.a, var_0.a.a), vec4<u32>(27725u, global1.a.a, global1.a.a, global1.a.a)) << (~4294967295u % 32u))), abs(0u));
    global1 = var_0;
    global0 = _wgslsmith_div_i32(i32(-1i) * -min(7805i, -1i ^ u_input.c.x), (i32(-1i) * -max(u_input.c.x, u_input.e)) | max(-19619i, _wgslsmith_dot_vec2_i32(u_input.b, ~vec2<i32>(-49311i, 0i))));
    return -358f;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_2) -> bool {
    global0 = min(u_input.c.x, _wgslsmith_sub_i32(u_input.b.x, -22964i) | _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.c.x, ~u_input.b.x), 1i));
    let var_0 = abs(u_input.c);
    global0 = _wgslsmith_div_i32(abs(min(-52820i, 1i)), -u_input.b.x);
    var var_1 = vec3<bool>(!any(vec2<bool>(true, true)), any(select(vec2<bool>(false, true), vec2<bool>(329f == arg_2.a.b.x, true), select(vec2<bool>(true, false), vec2<bool>(true, true), func_2()))), !any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true)) || true);
    var var_2 = arg_2;
    return select(355f != _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true))), any(!(!select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, true, var_1.x), true))), !(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, arg_0, var_2.a.a), ~vec3<u32>(64930u, 31800u, 67317u)) != 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.b.x;
    var var_1 = all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), !any(vec3<bool>(true, false, true))), vec2<bool>(true, any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)))), !func_1(global1.a.a, vec2<u32>(31989u, global1.a.a), Struct_2(Struct_1(global1.a.a, global1.a.b))) | true));
    let var_2 = _wgslsmith_div_u32(firstTrailingBit(global1.a.a), global1.a.a >> (1u % 32u));
    global0 = u_input.b.x;
    var_1 = false;
    let var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(135f, 522f, _wgslsmith_div_f32(1368f, 591f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1264f, global1.a.b.x, global1.a.b.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.b.x, -303f, 236f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(440f, _wgslsmith_f_op_f32(942f + -909f), global1.a.b.x))), all(vec4<bool>(func_2().x, u_input.b.x < -7713i, true, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.a.b.x), -1174f, global1.a.b.x))));
    let var_4 = select(select(!vec4<bool>(true, true, func_1(var_2, vec2<u32>(var_2, 88428u), Struct_2(global1.a)), func_1(82709u, vec2<u32>(12675u, 7563u), Struct_2(Struct_1(var_2, vec2<f32>(-1888f, -596f))))), vec4<bool>(all(vec2<bool>(true, false)), true, !(1u != var_2), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), !(global1.a.b.x >= global1.a.b.x))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, global1.a.b.x < var_3.x, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), global1.a.a >= var_2)), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, false))), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), true)), select(select(vec4<bool>(1000f < global1.a.b.x, false, true, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(all(vec3<bool>(false, true, true)), func_1(39252u, vec2<u32>(var_2, var_2), Struct_2(Struct_1(global1.a.a, global1.a.b))), true, true), vec4<bool>(2147483647i < u_input.a.x, func_1(var_2, vec2<u32>(4294967295u, var_2), Struct_2(Struct_1(12699u, vec2<f32>(global1.a.b.x, -696f)))), select(true, true, true), true), false), false));
    let var_5 = countOneBits(abs(u_input.a));
    let var_6 = Struct_2(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_3.x, -190f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-693f, -397f, false)), _wgslsmith_f_op_f32(-global1.a.b.x)), _wgslsmith_f_op_f32(-global1.a.b.x), 639f)), vec3<i32>(_wgslsmith_clamp_i32(0i, var_5.x, 12506i), _wgslsmith_dot_vec2_i32(~u_input.c.ww, select(var_5.zy, var_5.yz, var_4.x)), u_input.a.x) & vec3<i32>(var_5.x << (~114423u % 32u), _wgslsmith_div_i32(2147483647i >> (var_2 % 32u), -2147483647i), -1i), 2147483647i, global1.a.a, -u_input.b.x);
}

