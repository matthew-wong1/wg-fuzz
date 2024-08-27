struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-32277i, -17018i);

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global2: u32;

var<private> global3: bool = false;

var<private> global4: array<vec3<bool>, 15>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<u32>, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, _wgslsmith_f_op_f32(arg_3 * arg_3)))));
    global0 = _wgslsmith_mod_vec2_i32(firstTrailingBit(-u_input.a.zy) << (firstLeadingBit(~arg_2.zx) % vec2<u32>(32u)), u_input.a.yy);
    var var_1 = Struct_1(17279u);
    let var_2 = global1.xx;
    let var_3 = Struct_1(var_1.a);
    return _wgslsmith_mod_u32(var_1.a, 0u);
}

fn func_2() -> Struct_1 {
    var var_0 = firstLeadingBit(~vec3<u32>(1u, 1u, 1u));
    global2 = _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(~(~(~var_0.x)), func_3(vec3<bool>(global1.x, !global1.x, true), -5689i >> (~var_0.x % 32u), vec4<u32>(_wgslsmith_div_u32(34914u, 4294967295u), ~29139u, 28588u, _wgslsmith_mod_u32(1u, var_0.x)), -965f)));
    global4 = array<vec3<bool>, 15>();
    let var_1 = max(_wgslsmith_add_i32(18738i, 21042i), global0.x);
    var var_2 = Struct_1(var_0.x & ((_wgslsmith_add_u32(0u, 24507u) >> (1u % 32u)) << (1u % 32u)));
    return Struct_1(var_2.a);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>) -> u32 {
    global4 = array<vec3<bool>, 15>();
    var var_0 = func_2();
    global0 = -vec2<i32>(22246i, -35321i);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(841f, 1582f, -445f) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(242f, -102f, 1180f), vec3<f32>(212f, -1000f, -182f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-332f, 1234f, -645f))) * vec3<f32>(366f, -106f, -1431f))))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(-269f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-580f * -1053f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -635f) * -2436f), _wgslsmith_f_op_f32(min(-1189f, _wgslsmith_f_op_f32(floor(493f)))))));
    global1 = !vec4<bool>(global1.x, true, true, all(vec2<bool>(global1.x, global1.x)) & global1.x);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-15108i, _wgslsmith_mod_u32(109887u, func_1(vec2<i32>(-1i, u_input.b), ~vec4<i32>(u_input.b, u_input.a.x, global0.x, global0.x))));
}

