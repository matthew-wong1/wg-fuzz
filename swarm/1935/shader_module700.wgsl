struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
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

var<private> global0: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(1000f, -701f), vec2<f32>(-2362f, 1000f), vec2<f32>(571f, 1076f), vec2<f32>(-142f, 467f), vec2<f32>(-1282f, 1717f), vec2<f32>(643f, 392f), vec2<f32>(1000f, -446f), vec2<f32>(171f, -351f), vec2<f32>(1054f, 375f), vec2<f32>(924f, -255f), vec2<f32>(-1011f, 604f), vec2<f32>(305f, 155f), vec2<f32>(611f, 898f), vec2<f32>(-1091f, -1348f), vec2<f32>(-322f, 463f), vec2<f32>(-1000f, 1000f), vec2<f32>(235f, 1000f), vec2<f32>(-251f, 781f), vec2<f32>(-2575f, 508f), vec2<f32>(1000f, -330f), vec2<f32>(-1775f, 316f), vec2<f32>(612f, 1799f), vec2<f32>(-133f, 209f));

var<private> global1: array<i32, 7>;

var<private> global2: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(58833u, 0u), vec2<u32>(4921u, 1u), vec2<u32>(1u, 134289u), vec2<u32>(77592u, 4294967295u), vec2<u32>(0u, 68125u), vec2<u32>(1u, 22266u), vec2<u32>(4294967295u, 0u), vec2<u32>(68358u, 62452u), vec2<u32>(2426u, 1u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1582f, -247f, -1000f, -1757f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2066f, -411f, 874f, -516f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-633f, -740f, -229f, -805f) - vec4<f32>(1414f, -473f, -546f, 371f))) + vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -242f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1029f, -454f))), _wgslsmith_f_op_f32(f32(-1f) * -1192f), 129f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1027f, 546f, -200f, -502f), vec4<f32>(1827f, -1000f, 234f, 116f), false)))))));
    let var_1 = all(vec3<bool>(any(vec2<bool>(true, u_input.b.x > u_input.c)), false, ~u_input.c > 15600i));
    global1 = array<i32, 7>();
    global0 = array<vec2<f32>, 23>();
    let var_2 = _wgslsmith_sub_vec2_i32(u_input.b.yx & ~vec2<i32>(_wgslsmith_sub_i32(u_input.e, 14568i), -8597i), u_input.b.zz);
    return _wgslsmith_f_op_vec4_f32(-var_0);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(1u, ~0u, arg_0.a.x), firstTrailingBit(abs(u_input.a))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1482f), _wgslsmith_f_op_f32(f32(-1f) * -517f), -1000f))));
    var var_2 = !vec3<bool>(select(true, true, !any(vec3<bool>(true, false, true))), true, false);
    let var_3 = var_2.x;
    return 1u | u_input.a.x;
}

fn func_1() -> f32 {
    global0 = array<vec2<f32>, 23>();
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2());
    let var_1 = Struct_1(abs(u_input.a));
    let var_2 = 16521i;
    let var_3 = func_3(var_1);
    return -501f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 7>();
    global2 = array<vec2<u32>, 10>();
    global0 = array<vec2<f32>, 23>();
    global1 = array<i32, 7>();
    global0 = array<vec2<f32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(~global1[_wgslsmith_index_u32(49135u, 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1()))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1387f + 567f))));
}

