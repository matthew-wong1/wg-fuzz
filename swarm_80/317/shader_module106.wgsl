struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6>;

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(false, vec4<i32>(i32(-2147483648), 1i, 21146i, 0i), vec3<f32>(383f, -1608f, 535f), -1342f, 0u), Struct_2(true, vec4<i32>(51176i, -14089i, 10852i, -13252i), vec3<f32>(-1000f, 2374f, 927f), -1357f, 0u));

var<private> global2: array<Struct_2, 12>;

var<private> global3: array<vec3<i32>, 8>;

var<private> global4: array<f32, 11>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = Struct_4(firstLeadingBit(~(~u_input.a)) & ~_wgslsmith_clamp_u32(max(0u, 0u), ~u_input.a, 5704u & u_input.a));
    global0 = array<vec3<bool>, 6>();
    var var_2 = vec3<i32>(-_wgslsmith_clamp_i32(-_wgslsmith_mod_i32(-44816i, 2147483647i), 30862i, countOneBits(firstTrailingBit(18102i))), 1i, 1i);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32((~49854u | var_1.a) << (u_input.a % 32u), select(countOneBits(var_1.a), ~(~(0u << (1u % 32u))), true)), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1210f, global4[_wgslsmith_index_u32(var_1.a, 11u)], global4[_wgslsmith_index_u32(var_1.a, 11u)]), vec3<f32>(global4[_wgslsmith_index_u32(0u, 11u)], 770f, global4[_wgslsmith_index_u32(31627u, 11u)])), vec3<f32>(global4[_wgslsmith_index_u32(u_input.a, 11u)], global4[_wgslsmith_index_u32(var_1.a, 11u)], -1345f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4[_wgslsmith_index_u32(var_1.a, 11u)], global4[_wgslsmith_index_u32(var_1.a, 11u)], global4[_wgslsmith_index_u32(u_input.a, 11u)], global4[_wgslsmith_index_u32(1u, 11u)]), vec4<f32>(-1000f, 1972f, global4[_wgslsmith_index_u32(1u, 11u)], -2404f), vec4<bool>(false, var_3.x, var_3.x, true))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_1.a, 11u)])))))), 2096u, -249f);
}

