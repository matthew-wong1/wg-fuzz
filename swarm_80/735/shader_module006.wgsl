struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: vec4<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<f32> {
    var var_0 = ~global1.yz;
    var var_1 = false;
    var var_2 = vec4<f32>(1f, _wgslsmith_f_op_f32(select(1166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -654f)), true)), -575f, 1555f);
    var_1 = !(!(true | (all(vec3<bool>(true, false, true)) && false)));
    var_0 = vec2<u32>(_wgslsmith_sub_u32(77187u, ~u_input.a), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~global1.x, ~var_0.x, 1u) ^ ~reverseBits(u_input.a), select(13550u, 19799u, all(vec4<bool>(true, true, true, true)))));
    return var_2.xyw;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec3<bool>) -> u32 {
    global1 = min(_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(~arg_1.a.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 0u, 70156u, 24699u), u_input.d), ~_wgslsmith_clamp_u32(arg_1.a.b, arg_1.a.e, 19704u), 0u), _wgslsmith_div_vec4_u32(select(u_input.d, vec4<u32>(0u, 4294967295u, global1.x, 0u), arg_1.a.d), vec4<u32>(4294967295u, 10291u, 0u, 714u)) | (vec4<u32>(arg_1.a.b, u_input.c.x, u_input.a, 4294967295u) >> (~vec4<u32>(u_input.a, 4294967295u, arg_1.a.b, 32407u) % vec4<u32>(32u)))), vec4<u32>(1u, min(_wgslsmith_add_u32(u_input.c.x, arg_1.a.b) << ((arg_1.a.e | 1u) % 32u), min(~arg_1.a.e, u_input.d.x)), 38936u & global1.x, 62164u));
    var var_0 = arg_2;
    let var_1 = Struct_4(arg_1.a, arg_1, arg_2);
    var var_2 = ~(~var_1.b.b);
    var var_3 = global0[_wgslsmith_index_u32(53684u, 10u)];
    return ~(abs(min(_wgslsmith_add_u32(arg_1.a.e, global1.x), 1u)) ^ 4294967295u);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_3(Struct_1(false, _wgslsmith_mult_u32(reverseBits(global1.x) << (45393u % 32u), 20756u), reverseBits(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(u_input.b.x, -12169i)), vec2<i32>(arg_0, arg_0))), !(!(!vec4<bool>(var_0, false, var_0, var_0))), func_4(_wgslsmith_f_op_vec3_f32(func_3()), Struct_3(Struct_1(true, 54543u, u_input.b.zx, vec4<bool>(true, var_0, var_0, var_0), 2194u), -vec3<i32>(u_input.b.x, -4067i, 0i)), !vec3<bool>(var_0, var_0, false))), vec3<i32>(min(-11567i, max(_wgslsmith_mod_i32(0i, arg_0), _wgslsmith_sub_i32(arg_0, arg_0))), ~(-1i), arg_0));
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    global1 = _wgslsmith_sub_vec4_u32(~(_wgslsmith_add_vec4_u32(vec4<u32>(18171u, 1u, global1.x, 0u), vec4<u32>(1u, global1.x, global1.x, 4294967295u)) << (~vec4<u32>(1u, var_1.a.e, var_1.a.b, 71279u) % vec4<u32>(32u))), vec4<u32>(var_1.a.b, 1u, _wgslsmith_mult_u32(func_4(vec3<f32>(-2066f, -790f, 1389f), Struct_3(var_1.a, vec3<i32>(15358i, 1i, -5138i)), var_1.a.d.wyy), _wgslsmith_dot_vec2_u32(u_input.c.xy, vec2<u32>(0u, 12317u))), select(abs(var_1.a.b), _wgslsmith_mod_u32(global1.x, u_input.a), true))) & reverseBits(u_input.d);
    return var_1.a;
}

fn func_1(arg_0: Struct_3) -> vec4<bool> {
    global0 = array<Struct_2, 10>();
    var var_0 = func_2(_wgslsmith_add_i32(u_input.b.x, firstTrailingBit(~arg_0.a.c.x)));
    var var_1 = Struct_3(func_2(1730i), arg_0.b);
    global1 = u_input.d;
    let var_2 = Struct_4(func_2(-arg_0.b.x), Struct_3(func_2(~(-1i)), ~(firstLeadingBit(vec3<i32>(-2147483647i, var_1.a.c.x, -2147483647i)) << (global1.zyy % vec3<u32>(32u)))), !select(!(!vec3<bool>(false, arg_0.a.a, var_1.a.d.x)), select(!arg_0.a.d.xyy, vec3<bool>(true, arg_0.a.a, false), true), !select(vec3<bool>(true, true, false), var_1.a.d.yxz, var_0.d.wxy)));
    return vec4<bool>(var_0.d.x, !(~firstLeadingBit(2018i) >= (abs(u_input.b.x) & -u_input.b.x)), all(!(!var_1.a.d.zy)), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(!func_1(Struct_3(Struct_1(false, 1u, vec2<i32>(-18999i, u_input.b.x), vec4<bool>(true, true, false, true), global1.x), u_input.b)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), func_1(Struct_3(Struct_1(true, global1.x, vec2<i32>(u_input.b.x, u_input.b.x), vec4<bool>(false, true, true, true), u_input.c.x), vec3<i32>(u_input.b.x, u_input.b.x, 0i)))), any(vec3<bool>(true, true, true))));
    let var_1 = var_0.zy;
    var var_2 = 11561u ^ global1.x;
    var_2 = 0u;
    let var_3 = !all(var_0.xwx);
    let x = u_input.a;
    s_output = StorageBuffer(global1.yw, _wgslsmith_f_op_f32(273f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -293f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2246f, 878f)))), abs(u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1277f, 1f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1097f + 1997f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-589f, -771f, false)))))));
}

