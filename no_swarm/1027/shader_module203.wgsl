struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(503f, 800f, 1656f, 100f, 1000f, 2379f, -923f, 156f, 990f, -298f);

var<private> global1: vec2<f32>;

var<private> global2: u32 = 0u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 10>();
    global2 = _wgslsmith_clamp_u32(~min(~0u, 1u), 1u, reverseBits(37116u));
    global2 = 0u;
    var var_0 = vec2<bool>(any(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))) && true, all(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), true), vec2<bool>(select(true, false, true), any(vec2<bool>(false, true))))));
    global2 = min(79124u, 1u);
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global0[_wgslsmith_index_u32(19828u, 10u)])) * vec2<f32>(2102f, global0[_wgslsmith_index_u32(2371u, 10u)])))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(271f, 675f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(144f, -332f) + vec2<f32>(1062f, global0[_wgslsmith_index_u32(4294967295u, 10u)])) - _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -1614f), vec2<f32>(global0[_wgslsmith_index_u32(1u, 10u)], 1835f)))))));
    var_0 = vec2<bool>(u_input.a.x <= -11201i, !var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a.zy << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), u_input.a.zw, var_0.x), 1u);
}

