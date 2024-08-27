struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<bool, 22> = array<bool, 22>(false, false, false, true, false, false, false, false, true, false, true, false, true, true, false, true, false, true, true, true, false, true);

var<private> global2: array<bool, 4>;

var<private> global3: vec4<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    global0 = array<Struct_1, 14>();
    var var_0 = !(arg_3.c.x > _wgslsmith_sub_u32(reverseBits(~63640u), u_input.b.x));
    let var_1 = _wgslsmith_sub_vec2_u32(min(~vec2<u32>(u_input.c.x, ~u_input.b.x), ~((u_input.b.zw | u_input.a.wy) ^ firstTrailingBit(vec2<u32>(4294967295u, 4982u)))), firstTrailingBit(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.b.yx, arg_3.c.zz), u_input.c.x), arg_3.c.x)));
    let var_2 = global0[_wgslsmith_index_u32(1u, 14u)];
    let var_3 = arg_3.c;
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-351f, global3.x, 230f, 152f) + vec4<f32>(global3.x, -1000f, global3.x, global3.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(1000f, global3.x, -1320f, global3.x), vec4<f32>(962f, global3.x, -1213f, global3.x)))))));
    global3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-149f, _wgslsmith_f_op_f32(min(global3.x, 1172f)), _wgslsmith_f_op_f32(f32(-1f) * -254f), global3.x) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1000f, global3.x, -623f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, global3.x, global3.x, 817f), vec4<f32>(global3.x, global3.x, 2195f, -826f), all(vec2<bool>(global2[_wgslsmith_index_u32(54252u, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)])))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-959f, global3.x, 333f, global3.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, _wgslsmith_f_op_f32(-global3.x)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(abs(global3.x))), 1587f, _wgslsmith_f_op_f32(step(global3.x, 976f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    global1 = array<bool, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(u_input.c.x ^ ~0u), u_input.c.x, u_input.c.x, ~(~(~u_input.c.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(global3.x - 1325f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec2<bool>(global1[_wgslsmith_index_u32(55500u, 22u)], true), Struct_2(vec3<bool>(global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(1u, 4u)], true), global3.x, vec2<f32>(global3.x, global3.x), u_input.d.xy), global3.wxz, Struct_1(-7917i, vec3<i32>(-1i, u_input.d.x, -38496i), vec3<u32>(1u, u_input.c.x, 1u), u_input.d.x))), -1901f, false)), 897f), 1f));
}

