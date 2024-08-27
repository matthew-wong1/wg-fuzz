struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11>;

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, -33221i, -23037i, 0i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_0.a.xzz - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.x))), arg_0.a.x, 390f) * _wgslsmith_f_op_vec3_f32(arg_0.a.zxx - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-271f, 1984f, -1819f)))))));
    let var_1 = true;
    let var_2 = -select(min(select(~global1.xz, firstTrailingBit(vec2<i32>(-17423i, -2147483647i)), false), global1.xx), arg_0.b.xy >> (vec2<u32>(u_input.b.x | u_input.b.x, arg_0.c) % vec2<u32>(32u)), var_0.x > -353f);
    global0 = array<vec4<i32>, 11>();
    global0 = array<vec4<i32>, 11>();
    return vec4<u32>(79746u, ~arg_1.x | arg_0.c, 0u, ~40352u);
}

fn func_4(arg_0: vec4<u32>) -> vec4<f32> {
    global0 = array<vec4<i32>, 11>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(586f + 1835f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -783f), _wgslsmith_f_op_f32(f32(-1f) * -948f)), _wgslsmith_f_op_f32(ceil(-127f)), 674f) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(675f, 1344f, 262f, 470f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-285f, -955f, -822f, 182f))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(1137f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -637f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-614f * -1547f), -476f))));
    var var_1 = vec3<bool>(arg_0.x, false, false);
    let var_2 = arg_0.xx;
    let var_3 = !(var_0.a <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(177f, var_0.a, var_0.a, var_0.a)), u_input.a.wwz, u_input.b.x), vec4<u32>(arg_1, 54666u, 108468u, 6852u) | firstTrailingBit(vec4<u32>(arg_1, 1u, 1u, u_input.b.x)), vec2<bool>(true, true)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1469f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(select(-910f, -1908f, var_2.x)), var_0.a)))));
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1012f));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec4<bool>, arg_3: bool) -> Struct_2 {
    global0 = array<vec4<i32>, 11>();
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1007f));
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.b;
    global0 = array<vec4<i32>, 11>();
    let var_1 = u_input.a.x;
    var var_2 = 0i;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(767f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-912f)) * _wgslsmith_f_op_f32(769f * 1926f)) * _wgslsmith_f_op_f32(f32(-1f) * -221f))));
    return func_5(func_2(select(vec4<bool>(true, all(vec4<bool>(false, false, false, true)), true, true), vec4<bool>(true, select(true, false, false), true, false), vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, true)))), 27816u), true, vec4<bool>(true, true, select(1068f >= var_3.a, true, false), true), select(any(vec4<bool>(false, true, true, false)), true, 75067u == _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(var_0.x, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = func_1();
    let var_2 = global1.x;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1683f, 250f, -1000f, 1079f), vec4<f32>(var_1.a, -277f, var_1.a, var_1.a))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-580f, 922f, -960f, 1000f), vec4<f32>(870f, -692f, var_1.a, var_1.a)))) + _wgslsmith_div_vec4_f32(vec4<f32>(-1098f, var_1.a, var_1.a, -1000f), vec4<f32>(var_1.a, 748f, var_1.a, -1045f))))), _wgslsmith_div_vec3_i32(-countOneBits(vec3<i32>(u_input.a.x, global1.x, u_input.a.x)), u_input.a.xxy) | max(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -1i), vec2<i32>(u_input.a.x, -25908i)), -global1.x, select(0i, 7410i, true)), select(-vec3<i32>(global1.x, global1.x, global1.x), countOneBits(vec3<i32>(-41225i, u_input.a.x, 2089i)), vec3<bool>(true, true, true))), ~u_input.b.x);
    let var_4 = select(firstLeadingBit(~vec4<u32>(u_input.b.x, 36326u, 0u, 9138u) & ~vec4<u32>(89111u, 32960u, u_input.b.x, u_input.b.x)) << ((_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 36872u, 12167u, u_input.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(var_3.c, 0u, var_3.c, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 17170u, 35557u)), firstTrailingBit(vec4<u32>(var_3.c, 1u, 0u, var_3.c))) & _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 0u, var_3.c, u_input.b.x), vec4<u32>(u_input.b.x, var_3.c, 20423u, 0u) >> (vec4<u32>(u_input.b.x, var_3.c, var_3.c, 41151u) % vec4<u32>(32u)))) % vec4<u32>(32u)), func_3(Struct_1(vec4<f32>(275f, -2189f, 174f, _wgslsmith_f_op_f32(-var_3.a.x)), global1.xxw, ~u_input.b.x), ~select(vec4<u32>(16872u, 49422u, 1u, u_input.b.x), vec4<u32>(4294967295u, var_3.c, 39511u, 213u), var_0) << (vec4<u32>(18691u ^ u_input.b.x, countOneBits(999u), u_input.b.x, ~var_3.c) % vec4<u32>(32u)), vec2<bool>(select(var_0.x, var_0.x, var_0.x) || (13109u <= u_input.b.x), false)), vec4<bool>(!(true & select(var_0.x, var_0.x, false)), false, false, false));
    let x = u_input.a;
    s_output = StorageBuffer(17530u, -104f, vec3<f32>(_wgslsmith_f_op_f32(var_1.a - -2495f), _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(exp2(var_1.a))), ~vec2<i32>(global1.x, 0i));
}

