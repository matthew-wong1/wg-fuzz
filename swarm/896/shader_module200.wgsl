struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<f32>(-1674f, -296f, -558f), 1u, vec4<u32>(0u, 61295u, 4294967295u, 22528u), 0u), Struct_1(vec3<f32>(776f, 1092f, 568f), 1u, vec4<u32>(1u, 32985u, 57072u, 1u), 68327u));

var<private> global2: array<Struct_1, 5>;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>) -> u32 {
    global0 = array<i32, 4>();
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -702f)), arg_1.x, arg_1.x), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(13644u, 0u), abs(firstLeadingBit(vec2<u32>(1u, 0u)))), vec4<u32>(19774u, 1u, 1u >> (_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 67987u), 1u) % 32u), 48016u), 13254u);
    var var_1 = Struct_1(arg_1, var_0.b, var_0.c, reverseBits(~(~(var_0.b << (var_0.d % 32u)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(100f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.x, 741f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1475f * arg_1.x), 410f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), var_1.a.x)))) - _wgslsmith_f_op_f32(round(var_1.a.x))), -1000f);
    let var_3 = u_input.b | -1i;
    return abs(firstTrailingBit(1u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.a.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a.x, arg_3.a.x))) + 787f) * -2049f));
    global1 = array<Struct_1, 2>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x));
    global3 = !vec2<bool>(all(vec2<bool>(global3.x | false, global3.x || false)), true);
    var var_2 = 0u;
    return 30617u;
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: f32, arg_3: vec3<i32>) -> vec4<u32> {
    var var_0 = vec2<u32>(4294967295u, ~(~1u));
    let var_1 = global1[_wgslsmith_index_u32(1u, 2u)];
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~var_1.b), 4358u), 5u)];
    global2 = array<Struct_1, 5>();
    var var_3 = global1[_wgslsmith_index_u32(abs(max(countOneBits(firstTrailingBit(~0u)), firstLeadingBit(func_2(!arg_1, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, 1784f, var_1.a.x), vec3<f32>(-1271f, arg_2, -409f), true)))))), 2u)];
    return _wgslsmith_mod_vec4_u32(max(vec4<u32>(1u ^ func_3(Struct_1(var_2.a, 18858u, vec4<u32>(var_1.b, 90327u, 0u, var_1.d), 1u), var_1.c, Struct_1(var_3.a, var_1.b, vec4<u32>(0u, var_0.x, var_2.b, var_3.d), 0u), Struct_1(vec3<f32>(-1007f, var_3.a.x, -237f), 4294967295u, vec4<u32>(var_3.b, 38755u, var_1.b, 123149u), 60378u)), var_2.d, ~(~var_3.c.x), 61344u), vec4<u32>(_wgslsmith_add_u32(54872u, 118522u), _wgslsmith_clamp_u32(0u, var_3.d, var_3.d), 35040u, 4294967295u)), vec4<u32>(61593u, 1u, func_2(!(!vec2<bool>(true, arg_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-202f, arg_2, -575f)) - var_1.a)), select(reverseBits(var_2.c.x & 21817u), 4294967295u ^ ~var_1.c.x, _wgslsmith_sub_u32(var_1.d, var_1.c.x) <= min(var_1.c.x, 6145u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 5>();
    let var_0 = 1u;
    global1 = array<Struct_1, 2>();
    let var_1 = Struct_1(vec3<f32>(507f, 247f, 1f), ~var_0, select(select(func_1(~u_input.a.x, vec2<bool>(global3.x, global3.x), _wgslsmith_f_op_f32(step(-364f, 1116f)), -vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], u_input.b, u_input.a.x)), abs(~vec4<u32>(0u, var_0, 0u, var_0)), vec4<bool>(true, global3.x, !global3.x, true)), ~select(min(vec4<u32>(var_0, var_0, 12298u, 4294967295u), vec4<u32>(var_0, var_0, 26585u, var_0)), ~vec4<u32>(18268u, 10049u, var_0, var_0), select(true, global3.x, false)), false), var_0 << (~_wgslsmith_clamp_u32(44976u, 1u, ~var_0) % 32u));
    var var_2 = global2[_wgslsmith_index_u32(var_0, 5u)];
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, -839f, var_2.a.x, 1875f) + vec4<f32>(var_1.a.x, var_2.a.x, var_2.a.x, -231f))))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 485f))) * vec4<f32>(-522f, -895f, var_1.a.x, 896f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 246f, var_1.a.x, 811f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1290f, -948f, 1352f, var_2.a.x) * vec4<f32>(var_2.a.x, 322f, 129f, -109f)), !vec4<bool>(true, false, true, global3.x)))), !vec4<bool>(global3.x || global3.x, select(global3.x, global3.x, false), global3.x, false))));
    global0 = array<i32, 4>();
    let var_4 = global2[_wgslsmith_index_u32(~reverseBits(var_2.c.x), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(95285u, var_2.b) & vec2<u32>(66405u, min(53026u, ~0u)), _wgslsmith_f_op_f32(select(178f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.x))), global3.x)), 3302u);
}

