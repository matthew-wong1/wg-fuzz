struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    var var_0 = abs(~countOneBits(u_input.d.x));
    let var_1 = arg_1.a;
    global0 = (~(~(arg_0.c & u_input.d.x)) > firstLeadingBit(u_input.b)) || any(!vec3<bool>(true, arg_1.a.a, var_1.a));
    var_0 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-309f - _wgslsmith_f_op_f32(f32(-1f) * -602f)), -2322f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-122f, -838f, var_1.a)), -825f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-355f, -504f, arg_1.a.a)) + _wgslsmith_f_op_f32(round(1347f)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(834f, _wgslsmith_f_op_f32(-2337f + _wgslsmith_f_op_f32(min(-325f, -485f))))));
    return var_1.a;
}

fn func_2() -> u32 {
    global0 = all(vec4<bool>(true, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 1u, 65802u), vec3<u32>(u_input.a, u_input.c.x, 32042u)), vec3<u32>(u_input.a, 11305u, 38517u)) > u_input.a, func_3(Struct_2(Struct_1(true, u_input.a), -u_input.e, countOneBits(u_input.b)), Struct_2(Struct_1(false, u_input.c.x), abs(u_input.e), -u_input.e.x)), false));
    return u_input.a;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = Struct_1(arg_1.a.a, ~_wgslsmith_add_u32(func_2(), arg_0));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-717f, -203f, 1157f, 1493f)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(828f, -1389f, 549f, -172f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1569f, -120f, 380f, -571f)), arg_0 > arg_1.a.b))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-619f - 910f)), 1f, _wgslsmith_f_op_f32(round(279f)), 1f)));
    let var_2 = vec2<i32>(arg_1.b.x, ~25173i);
    var_0 = arg_1.a;
    var_0 = arg_1.a;
    return vec4<bool>(arg_1.a.a, true, var_0.a, select(false, true, !select(true, false, true)) & var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false), func_1(u_input.c.x, Struct_2(Struct_1(false, 66308u), vec4<i32>(u_input.e.x, 6179i, u_input.e.x, -22156i), -4860i)), vec4<bool>(true, true, true, true)), true)), _wgslsmith_dot_vec3_u32((~vec3<u32>(0u, u_input.a, 1u) & _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(0u, u_input.c.x, u_input.a))) << (abs(vec3<u32>(85285u, 0u, 40210u)) % vec3<u32>(32u)), u_input.c));
    let var_1 = u_input.d.x;
    var var_2 = !(!var_0.a);
    var_2 = all(func_1(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_0.b, var_0.b, 24374u, var_0.b)), ~vec4<u32>(11020u, var_0.b, 110150u, 49249u)), Struct_2(var_0, firstLeadingBit(vec4<i32>(u_input.b, u_input.d.x, -1i, 2147483647i)), u_input.d.x)));
    global0 = true;
    let var_3 = u_input.c.yz;
    var var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(291f, -1116f, -2413f, -501f), vec4<f32>(-1094f, 325f, -275f, 1000f), vec4<bool>(var_0.a, false, var_0.a, var_0.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(220f, 1212f, 314f, -661f) - vec4<f32>(185f, 1011f, -1016f, -320f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, -571f, 163f) - vec4<f32>(177f, -1190f, 172f, -486f)) - vec4<f32>(333f, -1000f, -884f, -2439f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1435f, 141f, 1516f, -1961f)), vec4<f32>(309f, -991f, -976f, -451f))), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(604f, 1866f, -1000f, 483f), vec4<f32>(-148f, 661f, 1097f, -220f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(618f, -862f, 694f, -736f)))))));
    var_2 = _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(var_3.x, var_3.x, 55258u), firstLeadingBit(vec3<u32>(var_3.x, 0u, 82362u))), abs(abs(u_input.c))) < 0u;
    var var_5 = Struct_1((select(abs(u_input.a), 0u, func_1(u_input.c.x, Struct_2(Struct_1(true, u_input.c.x), u_input.e, -11542i)).x) > 4294967295u) & var_0.a, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_dot_vec4_i32(u_input.e, -vec4<i32>(u_input.d.x, u_input.b, u_input.e.x, u_input.d.x)) & u_input.b), -987f);
}

