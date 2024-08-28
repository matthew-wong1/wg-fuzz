struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(floor(-1766f));
    var var_1 = vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(-(~u_input.b), -_wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(2147483647i, -1311i, u_input.a)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1518f)))));
    var var_2 = 8585u;
    global0 = u_input.d;
    return 55120u << (firstLeadingBit(~(~firstLeadingBit(u_input.d.x))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.d;
    var var_0 = _wgslsmith_f_op_f32(917f - -786f);
    var var_1 = -359f;
    let var_2 = u_input.a;
    global0 = u_input.d;
    global1 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-835f, -2153f, -1087f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1102f, 1000f, 1264f))) + vec3<f32>(485f, -429f, -146f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1249f, -457f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(276f, -1278f))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-327f * -966f), _wgslsmith_f_op_f32(select(-100f, 633f, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(192f, -1000f)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), true))))), _wgslsmith_f_op_f32(f32(-1f) * -927f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-842f, -408f, 200f, -747f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-102f, -690f, 2083f, 1149f) - vec4<f32>(838f, -1581f, -1829f, -1221f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-823f, -591f, 136f, 225f), vec4<f32>(1735f, -823f, 1405f, -1349f), vec4<bool>(false, true, true, false))))))), vec2<u32>(func_1(vec4<bool>(false, true, true, var_2 != var_2)), ~(global0.x & _wgslsmith_div_u32(u_input.d.x, global0.x))));
}

