struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<vec2<i32>, 4>();
    let var_0 = ~vec3<i32>(u_input.a.x, u_input.a.x, -8561i);
    var var_1 = Struct_3(select(!select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_0), !vec3<bool>(true, arg_0, arg_0), true), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, arg_0, false), vec3<bool>(true, true, true), true), arg_0), !select(!vec3<bool>(true, false, arg_0), select(vec3<bool>(true, arg_0, true), vec3<bool>(false, true, arg_0), true), vec3<bool>(arg_0, true, false))), Struct_2(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -113f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -822f), _wgslsmith_f_op_f32(floor(-1534f)), -17051i >= var_0.x)))), -firstTrailingBit(2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1340f, -789f, -819f) - vec3<f32>(-2102f, -263f, -1448f)))) - vec3<f32>(_wgslsmith_div_f32(-379f, -1865f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-975f * -583f)))), 4294967295u);
    var var_2 = 0i < ~var_0.x;
    var var_3 = Struct_1(~select(~vec4<i32>(32816i, u_input.a.x, var_1.b.a, u_input.a.x), vec4<i32>(var_1.c, 21772i, 2147483647i, u_input.a.x) & select(vec4<i32>(u_input.a.x, -1i, var_1.c, u_input.a.x), vec4<i32>(u_input.a.x, var_1.b.a, var_1.b.a, var_1.c), vec4<bool>(true, arg_0, arg_0, arg_0)), select(select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(false, var_1.a.x, arg_0, true), var_1.a.x), select(vec4<bool>(true, false, var_1.a.x, true), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, arg_0), vec4<bool>(false, true, true, true)), !var_1.a.x)), true != arg_0);
    return min(max(32871u, var_1.e), ~3218u);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: bool) -> Struct_2 {
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    let var_0 = _wgslsmith_add_vec3_u32(min(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) << (~(~vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), ~(~vec3<u32>(~4294967295u, ~10001u, func_3(true))));
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    return Struct_2(i32(-1i) * -arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1120f * _wgslsmith_f_op_f32(max(-178f, 572f))))));
}

fn func_1() -> u32 {
    global0 = array<vec2<i32>, 4>();
    let var_0 = func_2(!(!vec3<bool>(select(true, false, false), false, true)), u_input.a, true);
    var var_1 = !any(vec3<bool>(true, true, any(vec4<bool>(true, true, true, true)))) & (func_2(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), u_input.a, true).b == -2488f);
    var var_2 = abs(abs(~abs(select(vec4<u32>(57215u, 1u, 30735u, 53808u), vec4<u32>(100287u, 49594u, 4294967295u, 34097u), true))));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1000f))))));
    return _wgslsmith_div_u32(countOneBits(~_wgslsmith_mult_u32(~var_2.x, _wgslsmith_sub_u32(var_2.x, var_2.x))), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    var var_0 = vec3<u32>(abs(1u), _wgslsmith_sub_u32(reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(10658u, 1u, 16018u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 62695u, 101391u), vec3<u32>(20251u, 4294967295u, 4294967295u)))), _wgslsmith_add_u32(~select(4294967295u, 4294967295u, true), _wgslsmith_dot_vec3_u32(vec3<u32>(49649u, 7547u, 1u), vec3<u32>(11396u, 0u, 42028u)))), ~_wgslsmith_mult_u32(1u, func_1() >> (_wgslsmith_mult_u32(1u, 1u) % 32u)));
    global0 = array<vec2<i32>, 4>();
    var_0 = vec3<u32>(~_wgslsmith_mod_u32(0u, 8238u), ~max(_wgslsmith_add_u32(var_0.x, ~9786u), select(~0u, _wgslsmith_mult_u32(var_0.x, 0u), false)), _wgslsmith_add_u32(reverseBits(var_0.x), var_0.x));
    var_0 = abs(firstTrailingBit(select(~vec3<u32>(var_0.x, 0u, var_0.x), _wgslsmith_mult_vec3_u32(vec3<u32>(22000u, 0u, 8585u), vec3<u32>(78919u, 7639u, 1u)), true) & firstLeadingBit(~vec3<u32>(var_0.x, 4294967295u, var_0.x))));
    let var_1 = vec3<bool>(any(vec4<bool>(true, true, true, false)), any(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))), select(any(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))), true, true));
    global0 = array<vec2<i32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, 0i);
}

