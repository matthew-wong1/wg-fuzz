struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: Struct_2;

var<private> global3: i32;

var<private> global4: array<vec3<f32>, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global2 = arg_0;
    global3 = 61912i;
    global1 = arg_0;
    var var_0 = Struct_1(global1.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-597f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(482f * 812f))))));
    global1 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.d)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(countOneBits(firstLeadingBit(~(global0.a & global2.a))), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d * global1.c) * 711f))) - _wgslsmith_f_op_f32(func_3(Struct_2(global2.a << (108452u % 32u), Struct_1(vec2<u32>(21350u, u_input.a.x), -1615f), _wgslsmith_f_op_f32(global0.d + global0.b.b), 403f, global0.e)))), 832f, select(select(!select(vec2<bool>(false, false), vec2<bool>(global2.e.x, true), false), vec2<bool>(all(global1.e), false), (global0.b.a.x < global2.b.a.x) && select(global2.e.x, false, false)), select(select(global0.e, select(vec2<bool>(global1.e.x, false), vec2<bool>(false, global0.e.x), vec2<bool>(global2.e.x, global2.e.x)), global1.e.x), global1.e, vec2<bool>(true, false)), global2.e.x & true));
    global4 = array<vec3<f32>, 17>();
    let var_1 = var_0.b;
    let var_2 = Struct_2(_wgslsmith_clamp_i32(global0.a, global2.a, global2.a), global0.b, global1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), global0.c)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(global0.e.x, false), vec2<bool>(false, true), vec2<bool>(var_0.e.x, true)), select(vec2<bool>(global2.e.x, true), global0.e, global2.e.x)), true), !(!(!global0.e)), any(select(vec3<bool>(var_0.e.x, global1.e.x, var_0.e.x), select(vec3<bool>(false, false, global1.e.x), vec3<bool>(true, true, global1.e.x), vec3<bool>(var_0.e.x, false, global2.e.x)), !global2.e.x))));
    var var_3 = (min(vec2<u32>(~var_0.b.a.x, u_input.a.x), ~(~vec2<u32>(13921u, 4294967295u))) | global0.b.a) & firstTrailingBit(countOneBits(select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, global2.b.a.x), vec2<u32>(var_1.a.x, global1.b.a.x)), global2.b.a, true)));
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>) -> Struct_1 {
    global1 = func_2();
    let var_0 = vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(min(454f, _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(round(-841f))))));
    var var_1 = countOneBits(global0.a) | ~21832i;
    let var_2 = func_2();
    return func_2().b;
}

fn func_4(arg_0: Struct_1) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.b, global0.b.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c))))))), 551f);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> i32 {
    global0 = func_2();
    let var_0 = (~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_1.b.a.x, global0.b.a.x, arg_1.b.a.x), vec4<u32>(47395u, 81340u, u_input.a.x, 75619u))) ^ ~(~min(vec4<u32>(9285u, 82790u, global1.b.a.x, global2.b.a.x), vec4<u32>(arg_1.b.a.x, global2.b.a.x, 4294967295u, u_input.a.x)))) ^ _wgslsmith_div_vec4_u32(max(~(~vec4<u32>(1u, 58629u, 0u, 1u)), ~select(vec4<u32>(u_input.a.x, 1u, arg_1.b.a.x, global0.b.a.x), vec4<u32>(global2.b.a.x, global2.b.a.x, 0u, 19911u), vec4<bool>(global0.e.x, arg_2, arg_1.e.x, true))), _wgslsmith_clamp_vec4_u32(vec4<u32>(min(60089u, global0.b.a.x), ~13470u, global2.b.a.x, _wgslsmith_dot_vec2_u32(u_input.a, arg_1.b.a)), ~(vec4<u32>(global1.b.a.x, u_input.a.x, 10878u, 0u) << (vec4<u32>(22374u, arg_1.b.a.x, 26581u, 4294967295u) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(35085u, 60092u, 4294967295u, 0u), vec4<u32>(global0.b.a.x, u_input.a.x, 854u, arg_1.b.a.x))));
    var var_1 = true;
    global2 = arg_1;
    var var_2 = vec3<bool>(true, arg_1.e.x, false);
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(func_4(func_1(global0.b, true, !vec2<bool>(global0.e.x, global2.e.x)))), Struct_2(-1i ^ ~abs(global0.a), func_1(global2.b, true, vec2<bool>(false, !global0.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -683f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))), vec2<bool>(!select(global2.e.x, global2.e.x, global0.e.x), !(!global2.e.x))), false, func_2().b.b);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_i32(-9397i, -1i, min(global2.a, -2798i))), 1i, 1u);
}

