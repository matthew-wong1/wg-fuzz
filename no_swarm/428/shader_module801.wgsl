struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(28880u, 1u);

var<private> global1: array<u32, 12>;

var<private> global2: array<i32, 25> = array<i32, 25>(-1i, 2147483647i, 29596i, -54184i, -5564i, -1i, -1140i, 193i, -1i, i32(-2147483648), -24312i, 33290i, 2147483647i, -1i, i32(-2147483648), -3945i, -1i, i32(-2147483648), 2147483647i, 12688i, -10337i, 30065i, -29410i, 2147483647i, i32(-2147483648));

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(true, vec4<i32>(-37995i, 10185i, -1i, 38527i)), Struct_1(true, vec4<i32>(15479i, 4416i, 2147483647i, -1i)), Struct_1(true, vec4<i32>(4129i, 7948i, -73697i, 0i)), Struct_1(true, vec4<i32>(20053i, -52713i, -1i, 43027i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 4>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1512f, -2556f, -259f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(317f, -666f, 1482f, 100f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-302f, -1547f, -392f, 330f) + vec4<f32>(-524f, 978f, 101f, -602f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(642f, -639f, -1000f, -1445f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1001f, -2322f, -654f, 417f), vec4<f32>(-1655f, 437f, -1344f, -871f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1013f, -909f, -360f, -1344f) * vec4<f32>(-1336f, 333f, 1084f, -674f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(461f, -829f, -944f, -239f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(global2[_wgslsmith_index_u32(5972u, 25u)], global2[_wgslsmith_index_u32(4294967295u, 25u)])), -2147483647i, -1i) | vec4<i32>(-4595i, global2[_wgslsmith_index_u32(1u, 25u)] ^ 33581i, global2[_wgslsmith_index_u32(4960u, 25u)] >> (1u % 32u), select(u_input.b, 1i, true))), -u_input.b | countOneBits(u_input.b), _wgslsmith_f_op_vec3_f32(-var_0.xzy), _wgslsmith_f_op_f32(-var_0.x));
}

