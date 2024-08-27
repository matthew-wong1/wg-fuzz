struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21>;

var<private> global1: array<Struct_4, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = 397f;
    global0 = array<vec3<f32>, 21>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1752f, -258f, all(vec3<bool>(true, false, true)))))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-324f, 1343f)) - -516f)) * 306f));
    global0 = array<vec3<f32>, 21>();
    var_0 = 446f;
    return _wgslsmith_f_op_f32(f32(-1f) * -1126f);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1249f * 583f) - _wgslsmith_f_op_f32(min(1000f, 1379f))))), arg_2.d)), -1035f));
    let var_1 = ~vec3<i32>(countOneBits(26461i), _wgslsmith_mult_i32(arg_2.b, ~abs(arg_2.a)), -2937i);
    var var_2 = !((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) != var_0) && true);
    global1 = array<Struct_4, 25>();
    var_2 = all(vec2<bool>((all(vec3<bool>(false, arg_2.d, true)) || true) || arg_0, all(!select(vec3<bool>(false, arg_2.d, true), vec3<bool>(arg_2.d, arg_2.d, true), false))));
    return arg_2;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> Struct_5 {
    let var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(~countOneBits(u_input.a.x)), 21u)];
    global0 = array<vec3<f32>, 21>();
    global1 = array<Struct_4, 25>();
    return Struct_5(_wgslsmith_f_op_vec2_f32(-arg_0.zx), select(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), 550f < arg_0.x), true), vec2<bool>(select(false, any(vec3<bool>(false, true, true)), true), true)), -11132i, func_2(true, ~(i32(-1i) * -25543i), Struct_2(~abs(2147483647i), 22026i, ~(~(-36407i)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(exp2(global0[_wgslsmith_index_u32(65447u, 21u)])), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 17710u ^ u_input.a.x, ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 0u ^ u_input.a.x), _wgslsmith_mod_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u))), vec4<u32>(~0u, ~u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_1 = u_input.a.x;
    var var_2 = true;
    var var_3 = !var_0.b.x;
    global0 = array<vec3<f32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(2147483647i, ~(var_0.d.b | -2147483647i), (1i ^ var_0.d.b) | 23620i), ~(var_1 | ~_wgslsmith_mult_u32(4245u, 18434u)));
}

