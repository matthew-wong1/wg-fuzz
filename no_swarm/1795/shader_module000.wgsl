struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32> = vec3<f32>(-1530f, 1000f, 1000f);

var<private> global2: array<f32, 19>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> u32 {
    let var_0 = -27187i;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1926f, -1125f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 19u)])), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, _wgslsmith_f_op_f32(global0.b - 1000f), _wgslsmith_f_op_f32(global1.x + 1948f)), global0.a.wzy)))) - _wgslsmith_f_op_vec3_f32(global0.a.xyz - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.b, 1779f, -664f), vec3<f32>(-1000f, -380f, 820f))), vec3<f32>(-537f, global1.x, -283f)))));
    var var_1 = global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(global0.c, 57020u)), 19u)];
    let var_2 = global0.a;
    var_1 = 1937f;
    return 17654u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(global0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, firstLeadingBit(u_input.b)), 19u)] * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-537f * global2[_wgslsmith_index_u32(global0.c, 19u)]), _wgslsmith_f_op_f32(-1000f + global2[_wgslsmith_index_u32(global0.c, 19u)]))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(round(2100f)))))), func_1());
    var var_1 = 1536f;
    let var_2 = Struct_1(var_0.a, var_0.b, var_0.c);
    var var_3 = vec3<u32>(~4294967295u, var_0.c, _wgslsmith_add_u32(0u, var_0.c & _wgslsmith_sub_u32(~u_input.a.x, var_0.c)));
    let var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1071f, -223f)))), var_2.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), 779f, all(vec3<bool>(true, false, false)))), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(20581u, 19u)], 819f)), vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~1u, 19u)] + _wgslsmith_f_op_f32(ceil(var_0.b))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.c, var_3.x), firstTrailingBit(vec2<u32>(1u, 24863u))), 19u)], global2[_wgslsmith_index_u32(select(106292u, 29028u, false) & 1u, 19u)], _wgslsmith_f_op_f32(exp2(global0.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c, var_2.b, ~vec3<u32>(global0.c, var_0.c, var_3.x), ~(~u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(616f, _wgslsmith_f_op_f32(-2049f * global2[_wgslsmith_index_u32(global0.c, 19u)]))) - _wgslsmith_f_op_f32(-var_0.b)));
}

