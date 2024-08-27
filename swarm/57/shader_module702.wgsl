struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
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

var<private> global0: f32;

var<private> global1: array<vec3<f32>, 26>;

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<f32>(370f, 415f, 1000f), true, 81338u), Struct_1(vec3<f32>(-727f, -437f, 1000f), false, 26009u), Struct_1(vec3<f32>(329f, -622f, -316f), false, 8931u), Struct_1(vec3<f32>(-2407f, -654f, 849f), true, 1182u), Struct_1(vec3<f32>(373f, 552f, -1179f), false, 4294967295u), Struct_1(vec3<f32>(-1318f, 742f, -1000f), true, 4294967295u), Struct_1(vec3<f32>(651f, 1000f, 479f), false, 27503u), Struct_1(vec3<f32>(-1000f, -544f, 2006f), true, 65139u), Struct_1(vec3<f32>(518f, 764f, 1612f), true, 35087u), Struct_1(vec3<f32>(482f, -612f, -552f), true, 1u), Struct_1(vec3<f32>(865f, 586f, 327f), true, 27730u), Struct_1(vec3<f32>(-1268f, -257f, -1455f), false, 12803u), Struct_1(vec3<f32>(-424f, -248f, -450f), false, 1u), Struct_1(vec3<f32>(774f, -434f, 680f), true, 4294967295u), Struct_1(vec3<f32>(-1376f, -1000f, 231f), false, 48503u), Struct_1(vec3<f32>(755f, 1310f, -844f), true, 0u), Struct_1(vec3<f32>(1086f, -683f, -403f), false, 19768u), Struct_1(vec3<f32>(1745f, 1116f, 553f), true, 15217u), Struct_1(vec3<f32>(1020f, -434f, -890f), true, 4294967295u));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: i32) -> Struct_1 {
    return global2[_wgslsmith_index_u32(1u, 19u)];
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> bool {
    global1 = array<vec3<f32>, 26>();
    let var_0 = ~min(u_input.d.zwx, _wgslsmith_add_vec3_u32(~u_input.c.wyx, _wgslsmith_mod_vec3_u32(u_input.c.xyw, vec3<u32>(arg_2.c, 12231u, arg_1.c))) | reverseBits(~u_input.c.zzy));
    global2 = array<Struct_1, 19>();
    global2 = array<Struct_1, 19>();
    var var_1 = _wgslsmith_dot_vec2_u32(var_0.yz, u_input.d.zx) >> (~var_0.x % 32u);
    return all(vec2<bool>(true, true));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))) > 228f;
    var var_1 = any(vec4<bool>(true, !var_0, true, true));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1981f);
    var var_2 = u_input.a.x;
    return select(firstLeadingBit(arg_1), 21590i, select(arg_3, u_input.a.x == -1i, !arg_3));
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1814f), _wgslsmith_f_op_f32(f32(-1f) * -316f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -489f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -290f) - _wgslsmith_f_op_f32(select(1518f, -1008f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -832f) - _wgslsmith_f_op_f32(abs(-1672f)))))));
    var var_1 = func_4(-115f, 1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-936f))))), _wgslsmith_div_f32(177f, _wgslsmith_f_op_f32(-var_0.x))), func_3(true, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 26u)]) + vec3<f32>(var_0.x, 1344f, 1267f)), select(true, true, true), 56391u), func_2(~_wgslsmith_mod_i32(u_input.a.x, 0i)), _wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, u_input.b.x), 19u)];
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-101f, -658f, _wgslsmith_f_op_f32(1000f - var_2.a.x))))), true & !var_2.b, ~abs(_wgslsmith_mod_u32(~4294967295u, 24345u | u_input.c.x)));
    var var_4 = true;
    return vec2<bool>(true, true);
}

fn func_5(arg_0: bool) -> StorageBuffer {
    let var_0 = func_2(firstTrailingBit(u_input.a.x ^ u_input.a.x));
    global1 = array<vec3<f32>, 26>();
    let var_1 = vec2<bool>(var_0.a.x > var_0.a.x, any(select(select(vec4<bool>(arg_0, var_0.b, false, var_0.b), select(vec4<bool>(false, false, var_0.b, var_0.b), vec4<bool>(true, false, true, var_0.b), false), select(vec4<bool>(arg_0, arg_0, var_0.b, var_0.b), vec4<bool>(var_0.b, arg_0, var_0.b, arg_0), vec4<bool>(false, arg_0, var_0.b, false))), !vec4<bool>(arg_0, arg_0, var_0.b, true), select(vec4<bool>(var_0.b, arg_0, var_0.b, true), !vec4<bool>(false, arg_0, arg_0, var_0.b), arg_0))));
    global1 = array<vec3<f32>, 26>();
    var var_2 = true;
    return StorageBuffer(1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) - 908f))));
    let var_0 = global2[_wgslsmith_index_u32(~(~u_input.c.x), 19u)];
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.x + 1096f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-var_0.a.x)), var_0.a.x))));
    let x = u_input.a;
    s_output = func_5(any(func_1()));
}

