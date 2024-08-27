struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: Struct_1 = Struct_1(vec2<f32>(808f, 681f), -598f, -1109f, vec4<u32>(1u, 1u, 32323u, 5037u), 0i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + global1.b) - arg_0.x), arg_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))), -1303f, global1.d, ~(~global1.e));
    let var_1 = Struct_1(vec2<f32>(1000f, global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-1355f + global1.b)))), vec4<u32>(global1.d.x, u_input.c, arg_1, 42691u), global1.e);
    global1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-1820f * -2301f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-267f + global1.a.x), _wgslsmith_f_op_f32(-var_0.c)))) + var_0.b), var_0.d, -min(0i, _wgslsmith_clamp_i32(u_input.a, var_0.e, 6723i)) >> (firstLeadingBit(4294967295u) % 32u));
    let var_2 = var_1;
    var var_3 = ~abs(i32(-1i) * -38352i);
    return var_2.e;
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.a);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(0i, select(~u_input.b.x, i32(-1i) * -17069i, true), global1.e, firstLeadingBit(-6970i)));
    var_2 = vec4<i32>(func_3(vec3<f32>(_wgslsmith_div_f32(611f, 196f), 130f, _wgslsmith_f_op_f32(ceil(var_0.x))), var_1.d.x), global1.e, abs(1i), firstTrailingBit(~0i));
    global1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_0.a.x))), vec2<f32>(var_1.c, arg_0.b)), _wgslsmith_div_f32(global1.a.x, 851f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 1609f) - -385f))))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 22992u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.d.x), var_1.d.xz), 1u), vec4<u32>(1u << (var_1.d.x % 32u), 70897u, (arg_0.d.x & arg_0.d.x) | ~0u, _wgslsmith_clamp_u32(54843u, _wgslsmith_dot_vec2_u32(var_1.d.wz, global1.d.wy), 40317u)), ~global1.d), _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0.e, 32008i, u_input.b.x), vec4<i32>(-8262i, -898i, u_input.a, -21861i)), u_input.b.x), -(~u_input.b.x) << (~(~arg_0.d.x) % 32u)));
    return 119949u;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: f32) -> Struct_1 {
    var var_0 = select(vec3<bool>(any(vec3<bool>(true, true, true)), (all(vec4<bool>(false, false, false, true)) == (global1.d.x < global1.d.x)) & false, !(abs(u_input.c) <= func_2(Struct_1(global1.a, 764f, arg_2, global1.d, 1i)))), !(!vec3<bool>(global1.e <= -11076i, 5147u != u_input.c, true)), all(vec2<bool>(false, true)));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x * arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, global1.c, false))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(497f * 530f), -634f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.x))), global1.d, u_input.b.x);
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.xy + vec2<f32>(arg_2, -475f)), vec2<f32>(arg_0.x, -1900f))))), 465f, 1237f, _wgslsmith_sub_vec4_u32(global1.d, ~_wgslsmith_div_vec4_u32(global1.d, vec4<u32>(u_input.c, u_input.c, global1.d.x, 1u))), _wgslsmith_dot_vec2_i32(u_input.b.zw, -_wgslsmith_sub_vec2_i32(select(u_input.b.yw, vec2<i32>(1i, 1i), true), select(vec2<i32>(arg_1.x, arg_1.x), u_input.b.yz, var_0.xx))));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(arg_0.xx));
    var var_2 = !(!(!vec4<bool>(any(vec2<bool>(var_0.x, var_0.x)), any(vec2<bool>(var_0.x, true)), true, true)));
    return Struct_1(arg_0.yy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1452f, var_1.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -157f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), -1551f) - 121f), ~(global1.d & firstLeadingBit(~vec4<u32>(u_input.c, global1.d.x, 0u, global1.d.x))), -29448i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), 648f, _wgslsmith_f_op_f32(select(1f, 233f, true)), global1.d, -6947i ^ u_input.b.x);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f)));
    let var_2 = func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), -265f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.x, var_0.b)))))), ~abs(vec3<i32>(-6044i ^ var_0.e, _wgslsmith_mod_i32(-9017i, -1i), global1.e)), _wgslsmith_f_op_f32(floor(-1055f)));
    global0 = 4944i;
    let var_3 = var_0;
    let var_4 = true;
    let var_5 = any(!vec3<bool>(all(vec2<bool>(var_4, false)), var_4, min(global1.d.x, var_2.d.x) < var_2.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(123f, -1829f)) - _wgslsmith_f_op_f32(1000f + 1119f)), -295f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1506f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, 849f, var_2.b) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1606f, 1209f) + vec3<f32>(var_0.a.x, var_0.c, var_2.c))), vec3<f32>(var_3.b, -234f, _wgslsmith_div_f32(569f, 104f))), !(!var_4))), _wgslsmith_mod_i32((_wgslsmith_mod_i32(global1.e, var_2.e) | var_2.e) ^ 16050i, var_3.e), vec2<i32>(var_2.e, _wgslsmith_dot_vec2_i32(vec2<i32>(~(-5049i), func_1(vec3<f32>(var_3.a.x, var_0.a.x, -186f), u_input.b.xww, -381f).e), countOneBits(u_input.b.wy) & reverseBits(vec2<i32>(-23331i, var_2.e)))));
}

