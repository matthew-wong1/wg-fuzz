struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, false);

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(vec4<bool>(false, true, true, false), -773f), Struct_3(vec4<bool>(false, false, true, true), -356f), Struct_3(vec4<bool>(false, false, true, false), -2065f), Struct_3(vec4<bool>(true, false, true, true), -1209f), Struct_3(vec4<bool>(false, true, false, false), 1357f), Struct_3(vec4<bool>(false, false, true, true), 457f), Struct_3(vec4<bool>(true, true, false, true), 919f), Struct_3(vec4<bool>(true, false, true, true), 2120f), Struct_3(vec4<bool>(true, false, true, false), -1727f), Struct_3(vec4<bool>(true, false, true, false), 144f), Struct_3(vec4<bool>(true, false, true, false), 227f), Struct_3(vec4<bool>(false, false, true, false), -431f), Struct_3(vec4<bool>(true, true, false, true), 345f));

var<private> global2: array<vec4<f32>, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1581f, -279f, -696f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-238f, -1994f, -1423f))))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -724f), -757f, _wgslsmith_f_op_f32(264f + 258f))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1747f, -2221f, 427f) * vec3<f32>(656f, -1040f, 126f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1379f, -686f, -1485f) * vec3<f32>(-782f, 1566f, 846f)) - vec3<f32>(-2349f, 818f, 1467f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-791f, 266f, -1000f))), vec3<f32>(-455f, -350f, 1000f)))))));
    var var_1 = -1379f <= var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d.x, u_input.a, 2147483647i, u_input.d.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-7897i, u_input.a, -1i, -17468i), vec4<i32>(-1i, 2147483647i, u_input.a, u_input.a)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(41787u, u_input.e.x, u_input.e.x, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 40143u, u_input.c.x)) % vec4<u32>(32u))), 16374i, -select(-2147483647i, -1i, false) >> (select(0u, 1u, false) % 32u)), _wgslsmith_f_op_f32(619f - _wgslsmith_f_op_f32(-var_0.x)), -1878f);
}

