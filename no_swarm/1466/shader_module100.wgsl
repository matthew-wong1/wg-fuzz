struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<f32>(2826f, 1115f, -1000f)), Struct_1(vec3<f32>(187f, 488f, 515f)), Struct_1(vec3<f32>(626f, 1147f, 1181f)), Struct_1(vec3<f32>(-616f, -108f, -175f)), Struct_1(vec3<f32>(-241f, -979f, 477f)), Struct_1(vec3<f32>(828f, 983f, -2097f)), Struct_1(vec3<f32>(-719f, -1301f, -1158f)), Struct_1(vec3<f32>(1107f, -1391f, -112f)), Struct_1(vec3<f32>(1000f, -1193f, 1744f)), Struct_1(vec3<f32>(-276f, -1480f, -399f)), Struct_1(vec3<f32>(1000f, 550f, 1303f)), Struct_1(vec3<f32>(1039f, -1000f, 1921f)), Struct_1(vec3<f32>(509f, -1000f, -765f)), Struct_1(vec3<f32>(-1553f, -1000f, 1138f)), Struct_1(vec3<f32>(-462f, -1712f, -1306f)), Struct_1(vec3<f32>(1337f, 698f, -307f)), Struct_1(vec3<f32>(1000f, 188f, -288f)), Struct_1(vec3<f32>(-466f, 487f, -490f)), Struct_1(vec3<f32>(181f, -254f, -1374f)), Struct_1(vec3<f32>(1000f, -312f, 290f)), Struct_1(vec3<f32>(1424f, -452f, 1000f)), Struct_1(vec3<f32>(-1303f, 2206f, 1274f)), Struct_1(vec3<f32>(-256f, 430f, 378f)), Struct_1(vec3<f32>(279f, -853f, 1000f)), Struct_1(vec3<f32>(492f, 1490f, 156f)), Struct_1(vec3<f32>(899f, 1000f, 937f)), Struct_1(vec3<f32>(-121f, -842f, -1844f)), Struct_1(vec3<f32>(1710f, 463f, -1473f)), Struct_1(vec3<f32>(-1032f, -363f, 1000f)), Struct_1(vec3<f32>(-644f, -1000f, -274f)), Struct_1(vec3<f32>(477f, 1092f, 1159f)));

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 31>();
    var var_0 = 1i;
    var_0 = -1i;
    var var_1 = Struct_4(Struct_2(select(u_input.b, u_input.a.x & u_input.b, !(false & global1.x)), false, select(vec4<bool>(global1.x, all(global1.wwz), false, false), vec4<bool>(41896u <= u_input.d, global1.x, global1.x, false), !global1.x & any(global1.xx)), (u_input.c >> (16128u % 32u)) ^ -15076i));
    var var_2 = Struct_4(var_1.a);
    return -722f;
}

fn func_2(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = vec4<f32>(-498f, 709f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(763f * _wgslsmith_f_op_f32(f32(-1f) * -2527f))));
    let var_1 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(1455f - _wgslsmith_f_op_f32(-var_0.x))), 1000f));
    let var_2 = vec4<u32>(~(reverseBits(u_input.a.x) << (~u_input.d % 32u)) ^ 7334u, u_input.d, ~u_input.d, u_input.a.x);
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    return vec3<bool>(var_0.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -921f)), firstTrailingBit(~u_input.c) >= 8938i, arg_0.x);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_4) -> vec4<i32> {
    var var_0 = 5583i;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -450f), -1059f, any(vec3<bool>(true, arg_0, arg_3.a.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1266f, 1000f))))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(f32(-1f) * -1510f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-203f + 134f))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -1000f, 1159f, -181f), vec4<f32>(1709f, 2017f, -1296f, 1122f))))))));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-453f))), -1322f));
    var var_3 = select(func_2(select(arg_3.a.c.xxz, global1.xxy, true)).yz, arg_3.a.c.xz, true);
    var var_4 = _wgslsmith_mod_u32(u_input.b, u_input.a.x);
    return firstLeadingBit(~countOneBits((vec4<i32>(-14663i, arg_3.a.d, arg_3.a.d, 1i) | vec4<i32>(-3452i, u_input.c, 1i, u_input.e)) << (u_input.a % vec4<u32>(32u))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec3<i32>) -> bool {
    let var_0 = func_4(!select(arg_1.a.x && true, global1.x && false, any(vec2<bool>(true, false))), !arg_1.b.x, select(vec3<bool>(true, true, !global1.x), func_2(select(vec3<bool>(global1.x, arg_1.b.x, global1.x), global1.yyx, global1.yxy)), all(global1.wyy) & select(true, true, true)), Struct_4(Struct_2(u_input.d, false, select(vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(true, false, global1.x, false), vec4<bool>(false, false, true, arg_1.b.x)), -5412i ^ arg_0.x))) ^ reverseBits(arg_0);
    let var_1 = ~u_input.b;
    global0 = array<Struct_1, 31>();
    global1 = !select(select(vec4<bool>(select(false, global1.x, false), arg_1.a.x | true, all(vec4<bool>(true, global1.x, true, global1.x)), true), vec4<bool>(true, true, true, !arg_1.b.x), global1.x), vec4<bool>(all(vec3<bool>(true, true, true)), arg_1.a.x, arg_1.a.x, arg_1.b.x), !(!any(global1.wx)));
    global1 = !select(select(select(!vec4<bool>(false, false, true, arg_1.b.x), vec4<bool>(arg_1.a.x, false, true, true), true), !select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(true, true, arg_1.a.x, true), arg_1.a.x), true), !(!vec4<bool>(false, global1.x, false, global1.x)), ((99610u >= var_1) & true) != true);
    return !arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1370f + 856f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 501f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1470f + 132f)) + -117f)));
    let var_1 = -26020i;
    let var_2 = _wgslsmith_f_op_f32(-167f * -607f);
    var var_3 = !vec3<bool>(false, !func_1(select(vec4<i32>(u_input.c, -40312i, 0i, u_input.c), vec4<i32>(1i, 0i, 43428i, 4575i), vec4<bool>(true, global1.x, false, global1.x)), Struct_3(vec2<bool>(global1.x, global1.x), global1.zy), ~vec3<i32>(u_input.e, u_input.c, 1343i)), var_0.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(625f)) - var_2));
    var var_4 = min(max(max(vec3<u32>(~0u, u_input.d, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 22089u, 2951u), _wgslsmith_sub_vec3_u32(u_input.a.xww, vec3<u32>(68689u, 51228u, 0u)))), u_input.a.wzy), firstTrailingBit(u_input.a.wwx));
    let var_5 = ~_wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.c | u_input.e), _wgslsmith_clamp_vec2_i32(func_4(true, false, func_2(global1.yww), Struct_4(Struct_2(0u, true, vec4<bool>(global1.x, global1.x, var_3.x, var_3.x), var_1))).xw, -vec2<i32>(2147483647i, var_1), vec2<i32>(-1i) * -vec2<i32>(-18982i, 0i)));
    global0 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(var_4.x, var_4.x), firstTrailingBit(-1i), -var_5.x, vec4<f32>(-1227f, var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))), 494f));
}

