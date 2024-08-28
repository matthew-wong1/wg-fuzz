struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<bool>(false, false, true, true)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(501f)), 499f, arg_1.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    var var_0 = Struct_1(select(vec4<bool>(true, all(!vec3<bool>(arg_2.a.x, false, false)), any(vec4<bool>(true, arg_2.a.x, arg_2.a.x, arg_2.a.x)), any(arg_2.a.zwz)), select(arg_2.a, !arg_2.a, any(vec2<bool>(true, arg_2.a.x))), !(abs(u_input.a.x) == max(1i, u_input.e))));
    let var_1 = select((vec4<u32>(0u, reverseBits(17800u), countOneBits(46000u), u_input.b.x) & vec4<u32>(arg_0.x, u_input.c.x, 19974u, 45719u)) & ~max(_wgslsmith_add_vec4_u32(u_input.b, u_input.b), ~vec4<u32>(35424u, 83608u, u_input.c.x, 4294967295u)), ~vec4<u32>(global1.x >> (firstTrailingBit(arg_3) % 32u), 12667u, 19323u, u_input.b.x), -834f > _wgslsmith_f_op_f32(round(1514f)));
    global1 = abs(min(firstLeadingBit(abs(~arg_0)), u_input.b));
    let var_2 = !(!(all(select(var_0.a.wxw, var_0.a.yyz, false)) | false));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1451f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_1.x)))), arg_2.a.x)) * arg_1.x));
    return arg_2.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>) -> bool {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(840f + 849f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-393f, -882f, true))), 2193f))) + _wgslsmith_f_op_f32(func_2(3580i, vec3<bool>(true, true, true))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2086f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-360f * -525f))), -1000f, all(vec4<bool>(true, true, true, true)))));
    let var_2 = Struct_1(func_3(vec4<u32>(global1.x, ~35125u, global1.x, 49977u), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(round(var_1.x)), var_1.x, var_1.x))), Struct_1(vec4<bool>(true, true, true, true)), ~1u));
    return any(var_2.a.yzz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 21>();
    let var_0 = vec3<f32>(-1387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236f * 338f))), _wgslsmith_f_op_f32(1001f + _wgslsmith_f_op_f32(f32(-1f) * -812f)))));
    var var_1 = -1i;
    var var_2 = !vec3<bool>(func_1(global1.yyx, ~(u_input.b.yyy & global1.wzx)), !(!func_3(vec4<u32>(global1.x, 4294967295u, u_input.b.x, u_input.b.x), vec3<f32>(516f, -380f, -1579f), global0[_wgslsmith_index_u32(4294967295u, 21u)], 30946u).x), ~0u < u_input.b.x);
    var var_3 = global2[_wgslsmith_index_u32(4294967295u, 1u)];
    var var_4 = var_2.x;
    var var_5 = var_3.a.zw;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yx, _wgslsmith_sub_vec2_u32(~vec2<u32>(~u_input.c.x, _wgslsmith_mod_u32(4294967295u, global1.x)), _wgslsmith_sub_vec2_u32(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(global1.x, 24784u), global1.zz)), u_input.b.yx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - var_0.zx)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(var_0.zz))))), _wgslsmith_dot_vec2_u32(select(global1.zx, global1.xx, vec2<bool>(true, true)), ~vec2<u32>(u_input.b.x, 56093u)) | 86945u);
}

