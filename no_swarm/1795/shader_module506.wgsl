struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec3<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> bool {
    global0 = !vec4<bool>(global1.x, true, true, !select(true, false, !global0.x));
    var var_0 = Struct_3(2147483647i);
    var var_1 = _wgslsmith_add_vec3_u32(~u_input.d.zxz, vec3<u32>(34019u, (4294967295u >> (~u_input.a % 32u)) ^ ~_wgslsmith_clamp_u32(u_input.d.x, u_input.a, u_input.d.x), max(abs(1u), 18411u)));
    let var_2 = Struct_3(var_0.a);
    global0 = vec4<bool>(true, global1.x, false | all(vec4<bool>(!global0.x, var_0.a <= var_2.a, global0.x, !global0.x)), all(global0.yzy));
    return !(!(-firstTrailingBit(-1i) < min(i32(-1i) * -1i, abs(-47951i))));
}

fn func_2() -> vec3<bool> {
    global1 = global0.yww;
    var var_0 = Struct_2(select(vec3<bool>(global1.x, func_3(1575f), global1.x), global0.www, vec3<bool>(-1235f == _wgslsmith_f_op_f32(floor(-1336f)), select(any(global0.ywx), true, true), true)), select(~vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(abs(-vec2<i32>(u_input.c, -11705i)), vec2<i32>(u_input.c, i32(-1i) * -2147483647i)), global0.x), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -408f)))), ~abs(vec2<u32>(u_input.a, 0u) ^ u_input.d.xx), vec2<i32>(abs(u_input.c), u_input.c) >> ((~u_input.d.ww & ~vec2<u32>(4294967295u, 49598u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1800f, -759f, 680f, 839f), vec4<f32>(-439f, 945f, -915f, -1148f))))), u_input.c), false);
    let var_1 = var_0.d;
    let var_2 = var_0.c;
    let var_3 = ~firstLeadingBit(max(vec3<u32>(_wgslsmith_sub_u32(var_2.b.x, var_0.c.b.x), u_input.d.x, 41940u & var_0.c.b.x), u_input.d.xyx));
    return select(global0.xwz, vec3<bool>(_wgslsmith_f_op_f32(floor(1608f)) < var_2.a.x, !(true || !var_0.d), var_0.d & global1.x), !select(global0.yzy, vec3<bool>(global1.x && true, var_0.b.x <= -1i, !var_0.d), !vec3<bool>(var_0.d, true, true)));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = arg_0.c.d.x;
    global0 = !select(!vec4<bool>(false, !global1.x, true, any(global0.wz)), select(select(!vec4<bool>(false, false, false, global1.x), select(vec4<bool>(false, true, true, false), vec4<bool>(global0.x, false, global0.x, true), global0.x), select(vec4<bool>(global0.x, global0.x, false, arg_0.a.x), vec4<bool>(false, true, global0.x, false), vec4<bool>(arg_0.d, true, global0.x, global1.x))), !vec4<bool>(global1.x, false, global0.x, false), select(!vec4<bool>(true, global0.x, global0.x, global0.x), !vec4<bool>(global1.x, true, global0.x, false), global0.x)), select(vec4<bool>(-12877i == u_input.c, all(vec4<bool>(true, true, false, true)), true, global1.x), vec4<bool>(true, arg_0.a.x, !global0.x, false), select(!vec4<bool>(global0.x, arg_0.a.x, global0.x, false), vec4<bool>(global1.x, global0.x, arg_0.d, global1.x), true)));
    global0 = select(vec4<bool>(true, arg_0.d, true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1626f - 660f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.a.x - 1392f))), vec4<bool>(any(vec2<bool>(arg_0.c.d.x == -316f, arg_0.d)), true, !(!global0.x) || true, global0.x), vec4<bool>(false, true, !(arg_0.d != global1.x), true & select(arg_0.c.c.x >= -1i, global1.x, false)));
    var var_1 = global1.zx;
    let var_2 = Struct_4(vec3<i32>(firstLeadingBit(u_input.c) & abs(_wgslsmith_div_i32(arg_0.b.x, -50386i)), firstLeadingBit(-(i32(-1i) * -37055i)), 2147483647i), _wgslsmith_div_vec2_i32(arg_0.c.c, arg_0.b), select(!select(arg_0.a, !vec3<bool>(global0.x, var_1.x, false), true), !vec3<bool>(false, func_3(arg_0.c.d.x), global0.x), !arg_0.d));
    return Struct_2(vec3<bool>(var_2.c.x, !(!func_3(-1634f)), func_2().x), arg_0.b, arg_0.c, true);
}

fn func_1() -> bool {
    global0 = vec4<bool>(false, false, !global1.x, ((max(u_input.b, u_input.d.x) >> (u_input.d.x % 32u)) >= u_input.d.x) && !any(global0.zxx));
    var var_0 = func_4(Struct_2(func_2(), _wgslsmith_div_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(33304i, -1i), vec2<i32>(u_input.c, u_input.c)), -(~vec2<i32>(u_input.c, 2147483647i))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(762f, 872f))), _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.d.x), firstTrailingBit(u_input.d.wz)), ~(~vec2<i32>(u_input.c, -2147483647i)), vec4<f32>(_wgslsmith_f_op_f32(min(-113f, -251f)), 833f, _wgslsmith_f_op_f32(-1906f - -724f), _wgslsmith_f_op_f32(f32(-1f) * -531f)), -989i), true || any(select(vec4<bool>(true, global1.x, false, global0.x), vec4<bool>(true, false, true, true), global1.x))));
    let var_1 = vec3<f32>(_wgslsmith_div_f32(-605f, 1f), var_0.c.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-598f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.a.x)))))));
    let var_2 = Struct_4(vec3<i32>((i32(-1i) * -7491i) >> ((_wgslsmith_div_u32(u_input.a, u_input.d.x) ^ max(u_input.d.x, 13465u)) % 32u), 0i, min(_wgslsmith_sub_i32(0i, 88268i), abs(-1i)) << (func_4(Struct_2(vec3<bool>(true, true, global0.x), vec2<i32>(var_0.b.x, u_input.c), Struct_1(vec2<f32>(var_0.c.d.x, 463f), u_input.d.ww, var_0.c.c, var_0.c.d, var_0.b.x), global0.x)).c.b.x % 32u)), var_0.c.c << (~(~vec2<u32>(60179u, var_0.c.b.x) << (var_0.c.b % vec2<u32>(32u))) % vec2<u32>(32u)), select(global0.yxx, vec3<bool>(all(!var_0.a), 13401i > -u_input.c, all(!var_0.a)), true));
    var_0 = func_4(Struct_2(select(!func_4(Struct_2(var_2.c, vec2<i32>(79663i, -39961i), Struct_1(var_1.xz, u_input.d.zw, var_2.a.xz, vec4<f32>(var_1.x, 373f, 1000f, var_0.c.d.x), var_2.b.x), global0.x)).a, var_2.c, true), vec2<i32>(var_0.b.x, 16928i), var_0.c, func_3(var_1.x)));
    return select(func_2().x, var_0.d, func_4(func_4(func_4(Struct_2(global0.yxy, var_2.b, var_0.c, true)))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(global1.yx);
    global1 = select(select(global0.xxz, vec3<bool>(func_1(), var_0, var_0), global1.x), global0.xzw, all(global0.zzx));
    global1 = vec3<bool>(true, false, false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(abs(vec4<i32>(-1i, 17326i, u_input.c, u_input.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1348f))));
}

