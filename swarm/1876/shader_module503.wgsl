struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1082f, -350f);

var<private> global1: Struct_1;

var<private> global2: Struct_3;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> i32 {
    global1 = global2.b;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * global0.x)))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(global2.e.a.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.e.a.a + -327f), _wgslsmith_f_op_f32(abs(global1.a))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a)) - _wgslsmith_f_op_f32(787f * global1.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), global0.x))));
    global1 = Struct_1(global0.x);
    var var_0 = max(~(-vec3<i32>(u_input.b.x, u_input.a, u_input.b.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global2.a, 2147483647i, 2147483647i), vec3<i32>(2147483647i, global2.a, 1i)), vec3<i32>(global2.a, -1i, 36853i)) << (vec3<u32>(global2.c | 4705u, 1u, 0u) % vec3<u32>(32u))) >> (vec3<u32>(~(~(~global2.c)), 1u, abs(0u)) % vec3<u32>(32u));
    global2 = Struct_3(-(~(-37411i)), global2.b, ~u_input.c, !all(vec4<bool>(true, true, global2.d, global2.d)), global2.e);
    return -1i;
}

fn func_2() -> f32 {
    global2 = Struct_3(func_3(), Struct_1(global0.x), ~countOneBits(_wgslsmith_sub_u32(u_input.c, global2.c) >> (_wgslsmith_sub_u32(4622u, u_input.c) % 32u)), false, Struct_2(Struct_1(522f)));
    var var_0 = !all(!select(vec2<bool>(global2.d, global2.d), vec2<bool>(global2.d, false), true)) | (-1460f != global2.e.a.a);
    var var_1 = Struct_3(u_input.a, Struct_1(_wgslsmith_f_op_f32(exp2(global0.x))), u_input.c, !(!global2.d), Struct_2(global2.e.a));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1311f, -1791f));
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(235f, 785f))), vec2<f32>(var_1.b.a, -1258f)))) - vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -487f))))));
    return var_1.b.a;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(global2.e.a.a * _wgslsmith_f_op_f32(select(global2.b.a, global0.x, true)));
    global1 = global2.b;
    global1 = Struct_1(_wgslsmith_f_op_f32(func_2()));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global2.e.a.a, -1834f, global2.d))))))));
    let var_2 = Struct_3(-15367i, var_1.a, _wgslsmith_div_u32(firstTrailingBit(~global2.c) << (~_wgslsmith_clamp_u32(27778u, global2.c, global2.c) % 32u), 0u), false, var_1);
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<bool>) -> f32 {
    var var_0 = arg_2;
    global1 = func_1().b;
    global2 = arg_0;
    var var_1 = vec2<bool>(~39051u >= ~(~1u | (global2.c >> (22461u % 32u))), arg_2.x);
    var var_2 = arg_0.b;
    return 703f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(false, select(global2.d, global2.d, !global2.d), (_wgslsmith_f_op_f32(func_4(func_1(), global2.e, vec4<bool>(true, false, false, global2.d))) > global1.a) != ((global2.c ^ 24869u) < 4294967295u));
    let var_1 = func_1().e;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a, global1.a, var_1.a.a, -906f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a.a, global0.x, global0.x, 269f), vec4<f32>(-627f, -1707f, global0.x, var_1.a.a))))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.wz), _wgslsmith_div_vec2_f32(var_2.wx, vec2<f32>(469f, 1000f)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1395f, global1.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -109f)), true)))));
    var var_3 = Struct_1(_wgslsmith_div_f32(1401f, func_1().e.a.a));
    global2 = Struct_3(u_input.b.x, var_1.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, global2.c, global2.c, 4294967295u) & vec4<u32>(u_input.c, u_input.c, u_input.c, global2.c)), _wgslsmith_mod_vec4_u32(~vec4<u32>(global2.c, global2.c, u_input.c, 56730u), vec4<u32>(20925u, u_input.c, 4294967295u, u_input.c))), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(104443u, global2.c, u_input.c), vec3<u32>(28884u, 66591u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, global2.c, u_input.c), vec3<u32>(u_input.c, u_input.c, global2.c))), 0u, u_input.c, u_input.c)), true, Struct_2(global2.e.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1169f, _wgslsmith_f_op_f32(select(815f, var_2.x, false)), -1279f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_2.ywx, var_2.ywy))))), vec4<i32>(global2.a, 0i, 16281i, 0i), var_2.xx, ~(~reverseBits(~vec4<u32>(0u, 4294967295u, global2.c, 25528u))), u_input.c << (global2.c % 32u));
}

