struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-148f, vec2<f32>(-121f, 783f), 1000f);

var<private> global1: array<vec2<u32>, 24>;

var<private> global2: Struct_1;

var<private> global3: Struct_2;

var<private> global4: vec2<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = u_input.b;
    global1 = array<vec2<u32>, 24>();
    let var_1 = arg_0;
    let var_2 = select(1u | ((1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), u_input.a.yxw) % 32u)) ^ ~_wgslsmith_sub_u32(u_input.c, 1u)), ~1u, global3.a);
    global2 = var_1;
    return Struct_1(var_1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * global0.b.x) - global0.c), _wgslsmith_f_op_f32(f32(-1f) * -1394f))), global4.x);
}

fn func_3(arg_0: Struct_1) -> Struct_2 {
    let var_0 = arg_0;
    global3 = Struct_2(any(!(!vec2<bool>(true, global3.a))) == global3.a);
    let var_1 = Struct_2(all(vec4<bool>(global3.a, true, !(!global3.a), true)));
    global3 = Struct_2(true);
    global0 = Struct_1(var_0.c, global0.b, -226f);
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = u_input.b;
    let var_1 = u_input.a;
    global0 = Struct_1(239f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.b, _wgslsmith_f_op_vec2_f32(round(global0.b)), -u_input.b != _wgslsmith_dot_vec3_i32(u_input.d.ywy, u_input.d.xyx))) + global2.b), arg_1);
    global0 = func_2(Struct_1(_wgslsmith_f_op_f32(-971f - global4.x), global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * -356f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a)) * _wgslsmith_f_op_f32(-415f * global4.x)))));
    global4 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(-1312f * _wgslsmith_f_op_f32(arg_1 - global2.c)));
    return func_2(func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), global2.b, 1f)));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1276f + global4.x)))))));
    var var_1 = -2147483647i;
    var var_2 = func_3(Struct_1(var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, -1004f)), global0.b)), arg_0.c));
    let var_3 = Struct_2(any(vec2<bool>(false, global0.c >= arg_0.a)));
    var var_4 = arg_0;
    return var_3;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: bool) -> Struct_2 {
    var var_0 = func_5(func_4(func_3(func_2(Struct_1(global2.b.x, global0.b, global4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1194f, global4.x)) + _wgslsmith_f_op_f32(-global4.x))), select(select(!arg_2, vec2<bool>(false, true), false), !select(vec2<bool>(arg_2.x, true), arg_2, arg_2), true)));
    global0 = func_2(Struct_1(global4.x, global2.b, _wgslsmith_f_op_f32(-global0.a)));
    global3 = func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global0.b.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.a, global4.x)))), _wgslsmith_div_f32(global0.c, -116f)));
    global4 = global0.b;
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-640f, -638f)))), global0.c), _wgslsmith_f_op_vec2_f32(-global2.b), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(floor(global0.b.x))), 274f), global4.x));
    return func_5(func_2(Struct_1(1473f, vec2<f32>(_wgslsmith_f_op_f32(global2.c * global0.c), _wgslsmith_f_op_f32(f32(-1f) * -644f)), _wgslsmith_f_op_f32(-var_1.a))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global0 = func_4(func_1(-(~select(u_input.d.x, 0i, global3.a)), _wgslsmith_clamp_vec2_u32(~reverseBits(global1[_wgslsmith_index_u32(u_input.c, 24u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c, 1u), 23230u ^ u_input.c), 24u)], _wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(1u, 24u)], u_input.a.wy)), select(vec2<bool>(true, arg_1.a), vec2<bool>(!arg_2.a, arg_0.a == false), vec2<bool>(true, true)), arg_2.a), global4.x, select(vec2<bool>(!(!arg_1.a), true), select(select(select(vec2<bool>(arg_1.a, arg_2.a), vec2<bool>(true, false), arg_2.a), select(vec2<bool>(true, false), vec2<bool>(true, arg_0.a), vec2<bool>(arg_1.a, global3.a)), !vec2<bool>(arg_0.a, arg_1.a)), select(select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(arg_0.a, arg_1.a), vec2<bool>(arg_1.a, true)), !vec2<bool>(arg_2.a, arg_2.a), true), select(select(vec2<bool>(arg_0.a, arg_1.a), vec2<bool>(true, arg_2.a), arg_2.a), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true)), !select(vec2<bool>(arg_2.a, global3.a), vec2<bool>(true, false), select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, false), false))));
    let var_0 = _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(reverseBits(_wgslsmith_div_u32(abs(1u), 4294967295u)), max(_wgslsmith_mult_u32(~u_input.a.x, ~u_input.a.x), ~1u), 38571u, ~_wgslsmith_clamp_u32(u_input.c << (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(14320u, u_input.c, u_input.c, 0u), vec4<u32>(u_input.c, u_input.c, 5308u, 64788u)), u_input.a.x)));
    global2 = func_2(func_2(func_2(Struct_1(_wgslsmith_div_f32(global0.c, 571f), _wgslsmith_f_op_vec2_f32(global2.b + global2.b), global2.c))));
    var var_1 = !vec4<bool>(func_5(func_2(Struct_1(global4.x, global0.b, -154f))).a, false, arg_0.a, (any(vec4<bool>(arg_0.a, global3.a, arg_0.a, arg_0.a)) & false) | false);
    let var_2 = Struct_1(-183f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(func_2(func_2(Struct_1(global2.c, vec2<f32>(1470f, -1699f), -717f))).b, vec2<f32>(_wgslsmith_f_op_f32(global0.b.x * 1096f), -846f), select(!vec2<bool>(var_1.x, false), var_1.ww, select(vec2<bool>(false, global3.a), var_1.zz, false)))), global2.b, true)), global4.x);
    return func_2(func_4(func_5(var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-557f, var_2.b.x))), select(var_1.xx, vec2<bool>(true, var_1.x != true), true)));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec4<i32> {
    return -u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (u_input.d ^ (firstTrailingBit(select(u_input.d, vec4<i32>(-1i, u_input.b, u_input.b, u_input.d.x), vec4<bool>(false, true, global3.a, false))) << (u_input.a % vec4<u32>(32u)))) & countOneBits(func_7(Struct_2(any(vec4<bool>(global3.a, global3.a, global3.a, false))), func_6(Struct_2(global3.a), func_1(u_input.b, u_input.a.zy, vec2<bool>(global3.a, false), true), func_1(u_input.d.x, vec2<u32>(3803u, 4294967295u), vec2<bool>(true, global3.a), false)), func_4(Struct_2(false), global2.c, select(vec2<bool>(global3.a, false), vec2<bool>(global3.a, true), global3.a)), (-2147483647i & u_input.d.x) << (85636u % 32u)));
    let var_1 = vec4<f32>(func_2(Struct_1(_wgslsmith_f_op_f32(229f + _wgslsmith_f_op_f32(-749f + global4.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global4.x, 395f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a))))).a, _wgslsmith_f_op_f32(trunc(global2.c)), _wgslsmith_f_op_f32(-func_6(Struct_2(true), Struct_2(true), func_3(Struct_1(global0.b.x, global0.b, -1692f))).b.x), 588f);
    global2 = Struct_1(global4.x, var_1.zx, global2.a);
    var var_2 = select(!select(select(select(vec3<bool>(global3.a, global3.a, global3.a), vec3<bool>(false, false, global3.a), vec3<bool>(true, global3.a, global3.a)), select(vec3<bool>(false, false, true), vec3<bool>(global3.a, true, global3.a), vec3<bool>(global3.a, true, global3.a)), any(vec4<bool>(true, global3.a, global3.a, global3.a))), vec3<bool>(true, !global3.a, global3.a), select(vec3<bool>(false, global3.a, global3.a), vec3<bool>(global3.a, true, global3.a), all(vec4<bool>(global3.a, global3.a, global3.a, global3.a)))), !(!select(vec3<bool>(global3.a, false, false), !vec3<bool>(global3.a, global3.a, false), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2001f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-708f))));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.c - _wgslsmith_f_op_f32(min(global2.a, global0.c))), -865f, -371f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-780f * -1000f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(f32(-1f) * -658f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b.x))), _wgslsmith_f_op_f32(-global4.x), 1499f))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-643f - -697f));
}

