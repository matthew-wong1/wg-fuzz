struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(vec2<bool>(false, true), vec3<f32>(-955f, 1081f, -352f), vec2<i32>(-24164i, -20870i), Struct_3(true, 24873u, Struct_1(vec3<i32>(1i, -30593i, 3699i), -1344f, vec2<bool>(true, true), vec2<f32>(251f, 132f)), Struct_2(Struct_1(vec3<i32>(-5852i, -1i, 26582i), 1321f, vec2<bool>(false, false), vec2<f32>(-1136f, 1981f))))), Struct_4(vec2<bool>(false, true), vec3<f32>(490f, -1176f, 1870f), vec2<i32>(-1i, -34387i), Struct_3(true, 16183u, Struct_1(vec3<i32>(i32(-2147483648), -1i, -10491i), -1715f, vec2<bool>(true, false), vec2<f32>(-1390f, 189f)), Struct_2(Struct_1(vec3<i32>(38810i, 2147483647i, 13845i), -673f, vec2<bool>(true, true), vec2<f32>(1290f, 171f))))));

var<private> global1: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(480f, 1173f), vec2<f32>(1143f, -298f), vec2<f32>(412f, 304f), vec2<f32>(-1383f, 632f), vec2<f32>(666f, -196f), vec2<f32>(634f, 299f), vec2<f32>(-184f, -150f), vec2<f32>(-2236f, 1113f), vec2<f32>(272f, -666f), vec2<f32>(1388f, 1235f), vec2<f32>(-133f, -304f), vec2<f32>(-221f, 1646f), vec2<f32>(236f, 387f), vec2<f32>(-1185f, -232f));

var<private> global2: Struct_1;

var<private> global3: array<vec2<u32>, 30>;

var<private> global4: array<vec3<bool>, 25>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_f32(round(-1250f))));
    global4 = array<vec3<bool>, 25>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.x) + 1f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global2.b, global2.d.x)))), -468f, all(vec4<bool>(global2.c.x, false, global2.c.x, false))))));
    global3 = array<vec2<u32>, 30>();
    let var_1 = global0[_wgslsmith_index_u32(~0u, 2u)];
    return ~vec3<u32>(var_1.d.b, ~_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, 6100u), u_input.c), ~u_input.c);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = func_3();
    global0 = array<Struct_4, 2>();
    let var_1 = Struct_4(select(vec2<bool>(!(!arg_2.c.x), true), global2.c, arg_2.d.x >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_3, arg_2.d.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2557f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-804f))), -1312f) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1524f, global2.d.x, -1000f))))))), vec2<i32>((arg_2.a.x ^ firstLeadingBit(11784i)) ^ _wgslsmith_dot_vec3_i32(min(vec3<i32>(11613i, arg_2.a.x, -1i), vec3<i32>(-28254i, arg_0, -23944i)), vec3<i32>(arg_2.a.x, global2.a.x, u_input.b)), arg_0), Struct_3(!(!(-2147483647i == arg_0)), var_0.x, arg_2, Struct_2(arg_2)));
    global4 = array<vec3<bool>, 25>();
    global4 = array<vec3<bool>, 25>();
    return all(select(vec4<bool>(true, true, true, true), !select(!vec4<bool>(true, arg_1, false, true), select(vec4<bool>(false, arg_1, global2.c.x, arg_2.c.x), vec4<bool>(global2.c.x, false, false, arg_2.c.x), vec4<bool>(true, arg_2.c.x, global2.c.x, global2.c.x)), var_1.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(global2.a.zx, var_1.d.d.a.a.yx), ~var_1.c) < _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, global2.a.x, 1i, 1i) & vec4<i32>(arg_2.a.x, 14308i, arg_0, -24865i), vec4<i32>(2147483647i, 0i, 2147483647i, arg_2.a.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<i32>(global2.a.x, global2.a.x, -6241i, 11178i);
    global4 = array<vec3<bool>, 25>();
    var var_1 = var_0;
    global4 = array<vec3<bool>, 25>();
    var var_2 = select(global2.c, select(global2.c, !vec2<bool>(func_2(u_input.b, global2.c.x, Struct_1(vec3<i32>(0i, -35194i, 59447i), 287f, global2.c, global2.d), global2.d.x), true), true), !select(!vec2<bool>(global2.c.x, global2.c.x), select(vec2<bool>(true, global2.c.x), global2.c, !global2.c.x), select(vec2<bool>(global2.c.x, global2.c.x), global2.c, global2.c.x)));
    return Struct_1(firstTrailingBit(select(vec3<i32>(u_input.b << (31622u % 32u), 26087i, global2.a.x << (u_input.a.x % 32u)), var_1.wwz, !select(vec3<bool>(false, var_2.x, false), global4[_wgslsmith_index_u32(u_input.c, 25u)], global4[_wgslsmith_index_u32(u_input.c, 25u)]))), global2.b, vec2<bool>(!func_2(-1i, global2.c.x, Struct_1(vec3<i32>(1i, 6184i, 3426i), global2.b, vec2<bool>(global2.c.x, global2.c.x), global2.d), _wgslsmith_f_op_f32(1581f * 1233f)), false), _wgslsmith_f_op_vec2_f32(-global2.d));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    global4 = array<vec3<bool>, 25>();
    global1 = array<vec2<f32>, 14>();
    let var_0 = arg_0.d;
    var var_1 = (24250i << (~(_wgslsmith_mult_u32(arg_1.b, 17273u) & 1u) % 32u)) | ~8520i;
    global3 = array<vec2<u32>, 30>();
    return Struct_3(arg_0.c.x, ~50605u, arg_0, Struct_2(Struct_1(arg_1.d.a.a, var_0.x, vec2<bool>(global2.c.x, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global2.d, global2.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<bool>, 25>();
    global1 = array<vec2<f32>, 14>();
    var var_0 = 0u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.x) + _wgslsmith_f_op_f32(min(global2.b, -505f))) + _wgslsmith_f_op_f32(sign(-567f))), -186f, true)));
    let var_2 = func_4(func_1(), Struct_3(all(!global4[_wgslsmith_index_u32(1u, 25u)]), ~_wgslsmith_dot_vec2_u32(func_3().xx, vec2<u32>(41818u, u_input.a.x)), func_1(), Struct_2(func_1())));
    global3 = array<vec2<u32>, 30>();
    var var_3 = var_2.c;
    let var_4 = any(select(!vec4<bool>(true & var_2.d.a.c.x, !var_2.d.a.c.x, true, global2.b != 273f), vec4<bool>(var_2.c.c.x & (true && global2.c.x), select(!global2.c.x, var_3.c.x, func_1().c.x), any(global4[_wgslsmith_index_u32(~var_2.b, 25u)]), var_3.c.x), vec4<bool>(1000f >= global2.d.x, any(vec3<bool>(false, var_3.c.x, true)), var_2.a, true)));
    var var_5 = vec4<i32>(global2.a.x, var_2.c.a.x, (select(~(-1i), u_input.b, global2.c.x || false) >> (firstLeadingBit(~4294967295u) % 32u)) ^ ~(-26485i | u_input.b), abs(var_2.c.a.x) & ~(-67194i));
    let x = u_input.a;
    s_output = StorageBuffer(func_3());
}

