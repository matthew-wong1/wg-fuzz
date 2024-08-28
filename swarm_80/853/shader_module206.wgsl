struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(all(vec3<bool>(true, true, true)) | (select(true, true, false) & all(vec3<bool>(true, false, true)))) & all(vec2<bool>(true, true));
    var var_1 = u_input.e;
    var_1 = 77090i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1249f)) + _wgslsmith_f_op_f32(abs(-766f))))), -566f, -1068f, true & var_0, vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.b.x, u_input.a, 0u)), min(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))) | ~29907u, 4294967295u, _wgslsmith_div_u32(~(~u_input.b.x), ~1u), _wgslsmith_div_u32(reverseBits(1u), u_input.a)));
    var_1 = ~u_input.e;
    let var_3 = countOneBits(abs(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, var_2.e.x, 4294967295u, 7064u), var_2.e, vec4<bool>(false, var_0, true, var_2.d)), ~firstLeadingBit(var_2.e))));
    var var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, var_2.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, var_2.c))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, var_2.b), vec2<f32>(-129f, -811f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, -778f) - vec2<f32>(var_2.b, 407f))))))));
    var_1 = ~(-(u_input.c & 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_4.x, var_4.x, _wgslsmith_div_f32(334f, var_2.b), _wgslsmith_f_op_f32(select(var_4.x, var_2.b, var_0))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_2.a, var_4.x, -1572f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_4.x, var_4.x, 1881f))))), (vec2<i32>(-1i, u_input.d) & ~min(vec2<i32>(u_input.e, -1i), vec2<i32>(0i, u_input.c))) & -abs(select(vec2<i32>(u_input.d, -1i), vec2<i32>(-2147483647i, 41095i), vec2<bool>(false, var_2.d))), _wgslsmith_f_op_f32(max(var_4.x, -258f)), _wgslsmith_sub_vec2_i32(vec2<i32>(abs(_wgslsmith_add_i32(-1i, u_input.d)), -7115i), vec2<i32>(u_input.d, i32(-1i) * -1i)));
}

