struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_4) -> u32 {
    global0 = array<vec3<bool>, 10>();
    global0 = array<vec3<bool>, 10>();
    global0 = array<vec3<bool>, 10>();
    global0 = array<vec3<bool>, 10>();
    let var_0 = arg_2.a.a;
    return arg_0.x;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> vec4<u32> {
    global0 = array<vec3<bool>, 10>();
    var var_0 = !(!select(select(vec2<bool>(arg_0.a.b, arg_0.a.b), select(vec2<bool>(arg_0.a.b, arg_0.a.b), vec2<bool>(false, true), vec2<bool>(arg_0.a.b, true)), !vec2<bool>(false, arg_0.a.b)), select(!vec2<bool>(arg_0.d, true), vec2<bool>(true, true), select(vec2<bool>(arg_0.a.b, arg_0.a.b), vec2<bool>(arg_0.a.b, arg_0.d), vec2<bool>(false, true))), any(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(arg_1.x, 39341u, 77820u, arg_1.x)), 10u)])));
    var var_1 = Struct_2(Struct_1(arg_0.a.a, true), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1532f, -204f) - arg_0.b)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.b.x, -1000f)))))), 2147483647i, any(vec2<bool>(true | all(vec4<bool>(false, arg_0.d, true, false)), arg_0.a.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(300f, 181f)), _wgslsmith_f_op_f32(floor(arg_0.e)))))));
    global0 = array<vec3<bool>, 10>();
    global0 = array<vec3<bool>, 10>();
    return reverseBits(vec4<u32>(abs(arg_1.x & 57931u), _wgslsmith_add_u32(~36320u, 21961u), reverseBits(arg_1.x), 59737u)) ^ arg_1;
}

fn func_1(arg_0: vec4<f32>) -> StorageBuffer {
    global0 = array<vec3<bool>, 10>();
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~(~28268u), 0u, _wgslsmith_sub_u32(1067u, ~4294967295u), ~(~func_2(vec2<u32>(0u, 0u), Struct_2(Struct_1(1i, false), vec2<f32>(-1000f, arg_0.x), 2147483647i, true, arg_0.x), Struct_4(Struct_2(Struct_1(u_input.a.x, false), vec2<f32>(arg_0.x, -858f), u_input.a.x, true, arg_0.x))))), ~(reverseBits(func_3(Struct_2(Struct_1(-1i, false), vec2<f32>(-733f, 527f), 1i, false, 480f), vec4<u32>(0u, 4294967295u, 4294967295u, 15366u))) & firstTrailingBit(~vec4<u32>(11416u, 1u, 11821u, 80419u))));
    let var_1 = Struct_2(Struct_1(~abs(u_input.a.x), false), arg_0.xx, -u_input.a.x, true, _wgslsmith_f_op_f32(f32(-1f) * -264f));
    var var_2 = var_1.a;
    global0 = array<vec3<bool>, 10>();
    return StorageBuffer(_wgslsmith_mod_i32(-2147483647i, select(var_2.a, 0i, true)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(-1651f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1187f))))), abs(countOneBits(_wgslsmith_div_u32(~var_0.x, var_0.x))), u_input.a.yx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 10>();
    let var_0 = vec4<i32>(min(_wgslsmith_mod_i32(u_input.a.x, -u_input.a.x), ~(_wgslsmith_mult_i32(1i, u_input.a.x) | u_input.a.x)), _wgslsmith_div_i32(-38059i & u_input.a.x, _wgslsmith_mod_i32(~0i, u_input.a.x)), 1i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x));
    let x = u_input.a;
    s_output = func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1183f)) - -310f)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -952f), 1069f));
}

