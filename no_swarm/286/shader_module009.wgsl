struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(4294967295u, 4294967295u, 1u, 58533u, 101158u, 19403u, 58978u, 0u, 8463u, 4294967295u, 45143u, 4294967295u, 4294967295u, 1u, 0u, 7141u, 32441u);

var<private> global1: vec4<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    global0 = array<u32, 17>();
    var var_0 = _wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, u_input.a.x), 19586i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1479f, global1.x))) != _wgslsmith_f_op_f32(abs(global1.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, 1807f)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x))), global1.x, -1760f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)) * _wgslsmith_f_op_f32(sign(-446f)))));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - global1.x), 1f))) + _wgslsmith_div_f32(var_3.x, var_2.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-754f + var_2.x) + -1195f))), -988f, _wgslsmith_f_op_f32(-379f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))), -2440f))));
}

fn func_2() -> vec3<bool> {
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-555f * _wgslsmith_f_op_f32(round(-647f))), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(sign(global1.x))), -710f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1092f, global1.x, _wgslsmith_f_op_f32(f32(-1f) * -150f), 960f), _wgslsmith_f_op_vec4_f32(func_3()), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.a.x > 2147483647i), vec4<bool>(any(vec4<bool>(false, true, true, false)), true, true, true)))), !vec4<bool>(true, true, any(vec3<bool>(true, true, true)), true)));
    global0 = array<u32, 17>();
    var var_0 = vec3<bool>(!(countOneBits(2147483647i) > abs(u_input.a.x)) | all(vec2<bool>(true, true)), true, false);
    global0 = array<u32, 17>();
    let var_1 = -(~(~u_input.a.wyz));
    return !select(select(vec3<bool>(var_0.x, any(vec3<bool>(var_0.x, var_0.x, true)), true), select(vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x), var_0.x), all(vec3<bool>(var_0.x, var_0.x, true))), !select(vec3<bool>(true, false, false), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, true, var_0.x))), !vec3<bool>(!var_0.x, var_0.x, all(var_0.xx)), any(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, true, var_0.x), true)));
}

fn func_1(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = !(!(!(!func_2())));
    global0 = array<u32, 17>();
    var var_1 = true | !(false | all(!var_0));
    var var_2 = Struct_4(u_input.b, ~vec3<u32>(~0u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b, 43619u, 0u), ~arg_0.a.b), 0u));
    var var_3 = Struct_3(arg_0.a);
    return select(!select(func_2(), var_0, var_0), var_0, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    var var_0 = !all(vec3<bool>(true, -755f == global1.x, any(func_1(Struct_3(Struct_1(-18285i, 0u, global1.zyw, vec4<f32>(1040f, 653f, 1952f, global1.x), global1.wx))))));
    global0 = array<u32, 17>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2645f + -1000f))), 414f)), 1u, select(vec2<bool>(true, true), func_2().xx, !(true || func_2().x)), ~vec3<i32>(firstTrailingBit(u_input.c), ~1i, u_input.c) << (vec3<u32>(33387u, ~u_input.b, 25233u) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(361f, global1.x))) - global1.x), _wgslsmith_div_vec4_i32(u_input.a, abs(select(~u_input.a, vec4<i32>(var_1.d.x, -2147483647i, 2147483647i, 1i), true))));
}

