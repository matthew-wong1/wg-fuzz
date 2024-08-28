struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec3<bool>(true, true, false), false), vec2<bool>(true, true), -308f, true, -50886i), Struct_2(Struct_1(vec3<bool>(false, true, false), false), vec2<bool>(true, true), 378f, false, -23081i), Struct_2(Struct_1(vec3<bool>(true, false, false), true), vec2<bool>(true, true), 384f, true, i32(-2147483648)), Struct_2(Struct_1(vec3<bool>(true, false, true), false), vec2<bool>(false, false), 210f, true, -34273i), Struct_2(Struct_1(vec3<bool>(true, true, false), true), vec2<bool>(false, true), 816f, false, 0i), Struct_2(Struct_1(vec3<bool>(false, false, false), false), vec2<bool>(true, true), 140f, false, -1i), Struct_2(Struct_1(vec3<bool>(true, true, true), false), vec2<bool>(false, true), 149f, true, 16133i), Struct_2(Struct_1(vec3<bool>(true, true, false), true), vec2<bool>(true, false), 914f, true, -1674i), Struct_2(Struct_1(vec3<bool>(true, false, false), true), vec2<bool>(true, true), 979f, true, 1i), Struct_2(Struct_1(vec3<bool>(true, true, false), false), vec2<bool>(true, false), 1449f, true, 0i), Struct_2(Struct_1(vec3<bool>(false, false, true), false), vec2<bool>(false, false), 113f, false, 9476i), Struct_2(Struct_1(vec3<bool>(true, false, true), true), vec2<bool>(true, false), -595f, true, -30678i), Struct_2(Struct_1(vec3<bool>(false, true, false), true), vec2<bool>(true, true), 833f, false, 0i));

var<private> global1: array<vec3<u32>, 10>;

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(vec3<bool>(false, true, false), false), vec2<bool>(false, false), -1090f, false, 64662i), Struct_2(Struct_1(vec3<bool>(false, true, false), false), vec2<bool>(false, false), -1731f, false, -34887i), Struct_2(Struct_1(vec3<bool>(false, true, false), true), vec2<bool>(false, false), 425f, true, -67532i), Struct_2(Struct_1(vec3<bool>(false, false, false), true), vec2<bool>(false, true), 1454f, true, -11553i), Struct_2(Struct_1(vec3<bool>(false, true, true), true), vec2<bool>(false, false), -666f, true, 37639i), Struct_2(Struct_1(vec3<bool>(true, false, true), true), vec2<bool>(false, false), -275f, true, 1i), Struct_2(Struct_1(vec3<bool>(false, true, true), false), vec2<bool>(true, true), -1000f, false, 0i), Struct_2(Struct_1(vec3<bool>(true, true, false), false), vec2<bool>(true, true), -1050f, true, -25496i), Struct_2(Struct_1(vec3<bool>(false, false, false), false), vec2<bool>(false, false), -1158f, false, 0i), Struct_2(Struct_1(vec3<bool>(false, false, true), true), vec2<bool>(true, false), -1001f, true, 5893i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<bool>) -> vec2<f32> {
    let var_0 = Struct_1(!(!(!arg_2.zyz)), all(!(!(!arg_2.yxy))));
    global1 = array<vec3<u32>, 10>();
    let var_1 = _wgslsmith_add_u32(abs(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, 1u, u_input.d), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u)))), 1u);
    let var_2 = select(arg_2.wy, arg_2.yz, any(arg_2.xx));
    global2 = array<Struct_2, 10>();
    return vec2<f32>(-157f, -649f);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1000f, arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, false))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(-376f, arg_1, vec4<bool>(false, false, arg_0.a.x, true))).x, _wgslsmith_f_op_f32(sign(arg_1.x)))));
    let var_1 = Struct_1(arg_0.a, arg_0.a.x);
    global1 = array<vec3<u32>, 10>();
    global2 = array<Struct_2, 10>();
    var var_2 = !vec2<bool>(all(!arg_0.a.yz), !select(any(arg_0.a.xz), true, !var_1.a.x));
    return true;
}

fn func_2(arg_0: u32) -> vec3<bool> {
    global1 = array<vec3<u32>, 10>();
    var var_0 = abs(_wgslsmith_add_vec2_i32(select(~vec2<i32>(31366i, -48300i), vec2<i32>(u_input.a, u_input.a), true), abs(vec2<i32>(4907i, u_input.a))) ^ vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.a, abs(40052i)), -2147483647i ^ (u_input.a & u_input.a)));
    let var_1 = 1u;
    var var_2 = func_4(Struct_1(vec3<bool>(true, true, true), false | !any(vec3<bool>(true, true, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(1634f, 520f), _wgslsmith_f_op_vec2_f32(func_3(335f, vec2<f32>(399f, 231f), vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))));
    var_0 = -select(min(vec2<i32>(u_input.a, var_0.x), vec2<i32>(countOneBits(-17709i), ~var_0.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(59769i, u_input.a), ~vec2<i32>(6672i, var_0.x) ^ reverseBits(vec2<i32>(var_0.x, -19956i))), !(!func_4(Struct_1(vec3<bool>(true, true, true), false), vec2<f32>(-1092f, 1462f))));
    return !vec3<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))) & func_4(Struct_1(vec3<bool>(true, true, false), false), _wgslsmith_f_op_vec2_f32(vec2<f32>(962f, -781f) + vec2<f32>(2138f, 2269f))), true);
}

fn func_1() -> StorageBuffer {
    var var_0 = true;
    let var_1 = Struct_1(vec3<bool>(all(select(func_2(u_input.b.x), vec3<bool>(true, true, true), func_2(u_input.d))), false, !(!any(vec4<bool>(true, true, true, true)))), func_2(4294967295u).x);
    var var_2 = var_1.a;
    var var_3 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(562f, -398f)), -1000f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(241f, vec2<f32>(484f, -1211f), vec4<bool>(false, var_1.a.x, var_2.x, false))).x)));
    var_2 = vec3<bool>(false, false, true);
    return StorageBuffer(u_input.a, vec2<f32>(-1634f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-747f, 669f, true))))), u_input.a, (u_input.d ^ reverseBits(4294967295u)) & u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.a, ~0i);
    global2 = array<Struct_2, 10>();
    let x = u_input.a;
    s_output = func_1();
}

