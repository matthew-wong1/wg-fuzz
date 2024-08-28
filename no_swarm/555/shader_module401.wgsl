struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(0i, 39920u), Struct_1(1i, 8329u), Struct_1(-22008i, 166290u), Struct_1(0i, 84842u), Struct_1(-14195i, 4532u), Struct_1(-39807i, 1u), Struct_1(-10133i, 15606u), Struct_1(-1i, 85654u), Struct_1(-1i, 76704u));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(1i, 89188u), Struct_1(2147483647i, 1u), Struct_1(-35167i, 1u), Struct_1(i32(-2147483648), 9u), Struct_1(5862i, 0u), Struct_1(2147483647i, 0u), Struct_1(-30410i, 17603u), Struct_1(-40542i, 28167u), Struct_1(-1i, 54942u), Struct_1(2147483647i, 4294967295u), Struct_1(11848i, 85787u), Struct_1(i32(-2147483648), 0u), Struct_1(-24661i, 83268u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> vec4<i32> {
    return vec4<i32>(arg_2, -51380i, u_input.e.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(-u_input.e, ~u_input.e), firstTrailingBit(-u_input.e)), u_input.e));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<i32>) -> vec2<f32> {
    let var_0 = ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(select(0u, 1u, false), ~20092u), arg_0), arg_1.b, arg_2);
    var var_1 = false;
    var var_2 = (u_input.e.zx & arg_3.yy) & u_input.e.yz;
    let var_3 = select(!select(vec2<bool>(true, -5548i <= arg_3.x), vec2<bool>(all(vec4<bool>(false, true, false, false)), false), all(vec2<bool>(false, true))), select(select(vec2<bool>(false, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true), !all(vec4<bool>(false, true, false, false))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)))), vec2<bool>(false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)))));
    let var_4 = _wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b, abs(u_input.d.x), 0u, 0u), u_input.b));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1610f * 185f), _wgslsmith_f_op_f32(max(288f, 660f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-510f, -675f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-424f, -279f), vec2<f32>(-481f, 259f), var_3))))));
}

fn func_2(arg_0: i32, arg_1: bool) -> StorageBuffer {
    var var_0 = Struct_1(arg_0, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 68643u), _wgslsmith_clamp_vec2_u32(u_input.d.xz, u_input.a.xy, vec2<u32>(0u, 0u))), 2735u));
    let var_1 = u_input.e.x;
    global1 = array<Struct_1, 13>();
    global0 = array<Struct_1, 9>();
    global1 = array<Struct_1, 13>();
    return StorageBuffer(52710u, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(var_0.b, global0[_wgslsmith_index_u32(1u, 9u)], var_0.b, vec4<i32>(arg_0, 51869i, var_0.a, 0i))) + _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1303f), vec2<f32>(-540f, -1307f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-145f, 223f))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -778f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -490f), -1185f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(36590i);
    var_0 = u_input.e.x;
    var var_1 = min(-(~(vec4<i32>(u_input.e.x, -1292i, u_input.e.x, -2147483647i) >> (u_input.b % vec4<u32>(32u))) | -func_1(global0[_wgslsmith_index_u32(8085u, 9u)], true, -11340i)), -_wgslsmith_mod_vec4_i32(~(vec4<i32>(u_input.e.x, -61172i, u_input.e.x, u_input.e.x) << (vec4<u32>(1u, 17565u, u_input.c, u_input.d.x) % vec4<u32>(32u))), vec4<i32>(u_input.e.x, 2153i, u_input.e.x, -u_input.e.x)));
    var var_2 = _wgslsmith_f_op_f32(floor(-1737f));
    let var_3 = Struct_1(10259i, _wgslsmith_sub_u32(abs(u_input.b.x), ~1u));
    let x = u_input.a;
    s_output = func_2(u_input.e.x, true);
}

