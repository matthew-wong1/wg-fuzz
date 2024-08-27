struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3>;

var<private> global1: array<vec3<bool>, 23>;

var<private> global2: array<vec3<bool>, 20>;

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<f32>(306f, -163f, 757f), vec2<i32>(8120i, 1i), 4294967295u, 2147483647i), Struct_1(vec3<f32>(105f, -1540f, -1950f), vec2<i32>(1i, -56323i), 39549u, -1i), Struct_1(vec3<f32>(-566f, -154f, -647f), vec2<i32>(64922i, i32(-2147483648)), 1u, -569i), Struct_1(vec3<f32>(315f, 1000f, -3336f), vec2<i32>(-11710i, 2147483647i), 62587u, -1i), Struct_1(vec3<f32>(796f, 979f, -1017f), vec2<i32>(1i, 2147483647i), 59804u, 1i), Struct_1(vec3<f32>(-1332f, -912f, 1956f), vec2<i32>(-4312i, 48610i), 8812u, 42642i), Struct_1(vec3<f32>(511f, -412f, 1653f), vec2<i32>(459i, 21387i), 1u, 1i), Struct_1(vec3<f32>(1000f, 707f, -296f), vec2<i32>(-12512i, 1i), 0u, -1i), Struct_1(vec3<f32>(-1000f, 761f, 1498f), vec2<i32>(0i, 0i), 1u, 1i), Struct_1(vec3<f32>(-1000f, 717f, 1016f), vec2<i32>(i32(-2147483648), 1i), 0u, 11842i), Struct_1(vec3<f32>(343f, -256f, 816f), vec2<i32>(-6625i, 1i), 0u, 2147483647i), Struct_1(vec3<f32>(273f, -936f, 1000f), vec2<i32>(4733i, 2147483647i), 0u, -1i), Struct_1(vec3<f32>(-238f, -2991f, 1531f), vec2<i32>(i32(-2147483648), -10158i), 1u, -3047i), Struct_1(vec3<f32>(-1532f, 1274f, 458f), vec2<i32>(-5321i, -50337i), 1u, i32(-2147483648)));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-752f, 1171f), vec2<f32>(-502f, -345f)))), vec2<f32>(-2009f, _wgslsmith_f_op_f32(-1869f - 360f))), _wgslsmith_div_vec2_f32(vec2<f32>(-128f, _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1544f, -492f)))))))));
    let var_1 = select(select(all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), true)), !any(vec2<bool>(true, true)), true), false, all(vec2<bool>(true, true)) || all(vec4<bool>(true, 1i < u_input.d, any(vec4<bool>(false, true, false, false)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(select(u_input.b, _wgslsmith_div_u32(71109u, 47104u), true), u_input.a.x), _wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.a.x, 48199u), vec2<u32>(0u, 1u), true), vec2<u32>(21935u, 4294967295u))));
}

