struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
    d: vec2<u32>,
    e: f32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(31696u), Struct_1(50658u), Struct_1(1u), Struct_1(0u), Struct_1(11696u), Struct_1(1u), Struct_1(0u), Struct_1(0u), Struct_1(85210u), Struct_1(25859u), Struct_1(1u), Struct_1(19270u), Struct_1(4294967295u), Struct_1(33508u), Struct_1(30898u), Struct_1(28677u), Struct_1(6791u), Struct_1(9361u), Struct_1(29026u), Struct_1(1u), Struct_1(25439u), Struct_1(4294967295u), Struct_1(16391u), Struct_1(70159u), Struct_1(0u), Struct_1(1u));

var<private> global2: Struct_5;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> bool {
    global0 = global2.a.wx;
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 923f, -1128f, -270f)) * vec4<f32>(_wgslsmith_f_op_f32(-244f + -406f), _wgslsmith_div_f32(-397f, 256f), _wgslsmith_f_op_f32(select(-115f, -1000f, global0.x)), _wgslsmith_f_op_f32(max(966f, -229f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1099f, 1365f, -490f, -2005f)))));
    var var_1 = 1i | (-(~arg_0.a.x) >> (41606u % 32u));
    var var_2 = Struct_2(-(~(u_input.d | u_input.d)) & u_input.d, max(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~arg_0.b, vec2<u32>(3772u, 0u)), ~arg_0.b), arg_0.b), ~countOneBits(vec2<i32>(u_input.d.x, arg_0.a.x & -1i)));
    var var_3 = Struct_5(!global2.a, !(any(vec3<bool>(true, global2.b, false)) | true));
    return arg_1.x;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    var var_0 = global0.x;
    var var_1 = vec4<bool>(global2.b, select(0u >= ~u_input.a.x, true, global0.x), true, false | global0.x);
    var_1 = vec4<bool>(!func_3(Struct_2(u_input.d, u_input.a.xz, u_input.d.xz), !var_1.zw) & func_3(Struct_2(vec3<i32>(-1i, -2147483647i, u_input.d.x) >> (u_input.a.zww % vec3<u32>(32u)), u_input.a.yw, vec2<i32>(u_input.d.x, u_input.c)), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(var_1.x, false))), 4294967295u <= u_input.b, global2.b, true);
    var var_2 = global0.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(1291f - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -700f), arg_0.x)));
    return global0.x;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-572f)), -1140f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -194f)))))));
    var var_1 = ~u_input.a.x;
    var var_2 = vec4<i32>(max(u_input.d.x, u_input.d.x), u_input.c, ~(-2147483647i), select(-u_input.d.x, 1i, !func_2(vec4<f32>(147f, -872f, -1000f, 747f))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-554f, _wgslsmith_f_op_f32(f32(-1f) * -797f), -1138f, _wgslsmith_f_op_f32(step(2793f, 870f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-531f, 1000f, 1034f, -2329f) - vec4<f32>(-115f, -468f, 400f, 317f)), vec4<f32>(649f, 533f, 1687f, 1228f)))));
    let var_4 = _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(firstLeadingBit(u_input.d), ~var_2.zzx), select(var_2.zwz, var_2.ywz, true));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.a.wzy, vec3<u32>(u_input.a.x, u_input.b, 18202u)))), u_input.a.zyy) << (firstTrailingBit(abs(u_input.b) & 0u) % 32u), 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(182f, -731f)))), _wgslsmith_f_op_f32(-672f + -484f), -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1010f + -311f), 252f))))));
    global0 = vec2<bool>(true, true);
    var var_1 = u_input.c <= -abs(1i);
    var var_2 = Struct_3(func_1(), abs(select(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), u_input.a.xzw), u_input.a.zyy, all(vec4<bool>(global0.x, global2.a.x, true, false)))) & u_input.a.zyy, Struct_2(u_input.d, ~vec2<u32>(abs(37178u), _wgslsmith_div_u32(7221u, 4294967295u)), firstLeadingBit(min(select(u_input.d.yz, vec2<i32>(-2147483647i, u_input.d.x), global2.b), vec2<i32>(-2147483647i, u_input.d.x)))), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(max(u_input.a.xz, u_input.a.xz), ~u_input.a.yy) ^ vec2<u32>(1u, u_input.a.x), reverseBits(select(_wgslsmith_div_vec2_u32(u_input.a.wz, vec2<u32>(u_input.b, u_input.a.x)), firstTrailingBit(u_input.a.xy), true)), ~max(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(31846u, 4294967295u))), -1100f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.a.x, 1u));
}

