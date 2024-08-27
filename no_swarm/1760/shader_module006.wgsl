struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<bool>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(633f, -312f);

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec3<bool>(true, false, false)), Struct_3(vec3<bool>(false, false, true)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, false, false)), Struct_3(vec3<bool>(false, true, true)), Struct_3(vec3<bool>(false, false, true)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, false, false)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(false, true, true)), Struct_3(vec3<bool>(true, false, false)), Struct_3(vec3<bool>(true, false, false)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -402f);
    var_0 = _wgslsmith_f_op_f32(1727f * global0.x);
    var var_1 = vec2<bool>(!global1.a.x, any(!(!(!vec4<bool>(true, true, global1.a.x, false)))));
    var var_2 = Struct_2(!var_1.x);
    let var_3 = 1u >> (_wgslsmith_div_u32(~4294967295u, ~39216u) % 32u);
    return Struct_2(!(~var_3 >= ~_wgslsmith_clamp_u32(0u, var_3, var_3)));
}

fn func_1() -> vec2<u32> {
    let var_0 = !(!(!global1.a));
    global2 = array<Struct_3, 17>();
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -379f)))))));
    var var_1 = 27010u;
    var var_2 = func_2();
    return vec2<u32>(select(~1u, select(31580u, countOneBits(0u), var_0.x), var_0.x) >> (44255u % 32u), _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, 0u, 1u), vec3<u32>(30312u, 0u, 7922u)), vec3<u32>(26792u, 0u, 0u)), _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(1u, 41173u, 4294967295u, 49603u)), ~(~vec4<u32>(1u, 34835u, 1u, 5332u)))));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a.ww, vec2<i32>(u_input.a.x, -u_input.b & 1i)), u_input.d);
    global0 = vec2<f32>(-473f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), 850f)));
    let var_1 = false;
    let var_2 = Struct_1(vec4<bool>(any(global1.a.yy), false, !(!var_1 && arg_0), (_wgslsmith_f_op_f32(trunc(-1885f)) > global0.x) == all(!vec4<bool>(arg_0, true, true, var_1))), i32(-1i) * -_wgslsmith_div_i32(var_0, -2147483647i >> (0u % 32u)), !select(vec4<bool>(true, true, true, all(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, true))), !vec4<bool>(true, global1.a.x, var_1, arg_0), all(vec4<bool>(true, false, arg_0, false))), _wgslsmith_dot_vec4_i32(~u_input.a, u_input.a) ^ 2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-549f * global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -445f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(351f, -1078f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-597f, -1304f))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-770f, global0.x)))))));
    global2 = array<Struct_3, 17>();
    return abs(vec3<u32>(1u, ~(~37407u), abs(10860u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (abs(~vec2<u32>(1u, 1u)) & vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, 54985u, 4294967295u), min(10128u, 0u)), 11127u)) << (func_1() % vec2<u32>(32u));
    let var_1 = func_3(!(-949f != _wgslsmith_f_op_f32(-global0.x)));
    global2 = array<Struct_3, 17>();
    global2 = array<Struct_3, 17>();
    global2 = array<Struct_3, 17>();
    global2 = array<Struct_3, 17>();
    var var_2 = (27751u < func_1().x) && (max(_wgslsmith_mult_i32(u_input.e >> (1u % 32u), 35504i), u_input.b) >= u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~var_1.x), vec4<i32>(78916i, -1i, u_input.d, ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 11560i, u_input.e), u_input.a))), var_1.x, reverseBits(max(var_1.x, abs(~45829u))), _wgslsmith_f_op_f32(abs(global0.x)));
}

