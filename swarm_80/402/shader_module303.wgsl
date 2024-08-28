struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(873f, -1000f, 1013f);

var<private> global1: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false));

var<private> global2: Struct_1;

var<private> global3: bool = true;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 27>();
    let var_0 = Struct_1(global2.a);
    var var_1 = var_0;
    global1 = array<vec4<bool>, 27>();
    let var_2 = var_0;
    let var_3 = _wgslsmith_mod_u32(0u, 51406u) >> (~u_input.c.x % 32u);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, global0.x, 307f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2474f, 721f, 2396f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xy ^ vec2<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.d.xz), _wgslsmith_add_vec2_i32(u_input.d.yy, u_input.d.yy)), u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(317f, global0.x, global0.x)))) + vec3<f32>(_wgslsmith_f_op_f32(-143f + -1267f), _wgslsmith_f_op_f32(max(global0.x, global0.x)), -1140f)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -356f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global0.x) - _wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -739f) - _wgslsmith_f_op_f32(max(global0.x, global0.x))))), countOneBits(select(vec4<u32>(var_3, 4294967295u, 40072u, u_input.c.x), vec4<u32>(var_3, var_3, var_3, u_input.c.x), vec4<bool>(true, var_2.a, var_0.a, false)) | _wgslsmith_sub_vec4_u32(vec4<u32>(var_3, 0u, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, var_3, 33683u, 26130u))) ^ ~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(9354u, 70513u, u_input.c.x, u_input.c.x), vec4<u32>(0u, 13790u, u_input.c.x, 19722u)), vec4<u32>(u_input.c.x, u_input.c.x, 48802u, 9342u) >> (vec4<u32>(0u, 0u, 1u, var_3) % vec4<u32>(32u))), vec4<i32>(-18010i, u_input.d.x, -2147483647i, _wgslsmith_add_i32(~5334i, -u_input.d.x)));
}

