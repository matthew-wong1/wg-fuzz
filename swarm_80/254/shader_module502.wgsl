struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<bool>(false, true, false, true), 0u, vec4<u32>(2345u, 24180u, 0u, 47258u), vec3<u32>(4294967295u, 1681u, 4294967295u), 1i), Struct_1(vec4<bool>(false, true, true, true), 190196u, vec4<u32>(38638u, 1u, 86807u, 27785u), vec3<u32>(4294967295u, 4294967295u, 64000u), 10153i));

var<private> global3: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(1000f, 1346f), vec2<f32>(-183f, -1181f), vec2<f32>(1740f, -406f), vec2<f32>(143f, -867f), vec2<f32>(-378f, 1028f), vec2<f32>(1552f, 1000f), vec2<f32>(-530f, 631f), vec2<f32>(-1467f, -1049f), vec2<f32>(-1510f, -784f), vec2<f32>(-276f, 1239f), vec2<f32>(135f, 563f), vec2<f32>(-756f, -381f), vec2<f32>(-1244f, -260f), vec2<f32>(-547f, 128f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<i32>) -> StorageBuffer {
    var var_0 = global2[_wgslsmith_index_u32(0u, 2u)];
    global2 = array<Struct_1, 2>();
    global2 = array<Struct_1, 2>();
    var_0 = global2[_wgslsmith_index_u32(4294967295u, 2u)];
    let var_1 = ~firstTrailingBit(global1.c);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1140f, arg_0, -1957f)), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-347f, -283f, arg_0) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1743f, 183f) - vec3<f32>(arg_0, -532f, arg_0)))))), 1177f, arg_0, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(firstLeadingBit(global0[_wgslsmith_index_u32(global1.b, 17u)]), ~global1.d.x)), 17u)]);
    var var_1 = global1.c.x;
    var var_2 = -vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(58061i ^ u_input.a.x, 40046i), _wgslsmith_mod_vec2_i32(u_input.a.xy, vec2<i32>(global1.e, -1i))), 0i);
    global0 = array<u32, 17>();
    var var_3 = vec3<bool>(false, !all(select(vec2<bool>(true, false), vec2<bool>(true, true), global1.a.xz)), true);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-253f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -723f))), -543f)))));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_4 * _wgslsmith_f_op_f32(var_4 + var_4))))), firstLeadingBit(0u) >> (_wgslsmith_add_u32(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18520u, 17u)], 17u)] ^ global1.b), firstLeadingBit(~var_0)) % 32u), ~_wgslsmith_mod_vec2_i32(abs(abs(vec2<i32>(-23499i, var_2.x))), vec2<i32>(~(-2731i), _wgslsmith_clamp_i32(var_2.x, global1.e, 13435i))));
}

