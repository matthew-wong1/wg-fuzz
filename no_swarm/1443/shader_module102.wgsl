struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    return ~(_wgslsmith_div_vec4_i32(~(arg_1.c | u_input.a), firstTrailingBit(~u_input.a)) >> (~(~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)));
}

fn func_2() -> Struct_1 {
    var var_0 = 4294967295u;
    let var_1 = !select(vec2<bool>(2147483647i != u_input.a.x, true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(global0.x >= -419f, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true)));
    var var_2 = u_input.a;
    var_0 = 1u;
    var_2 = func_3(true, Struct_1(var_2.x, true, u_input.a));
    return Struct_1(-2147483647i, false, vec4<i32>(var_2.x, var_2.x, u_input.a.x, -u_input.a.x));
}

fn func_1() -> f32 {
    let var_0 = global0.x;
    let var_1 = !(!(!(global0.x < _wgslsmith_f_op_f32(1016f - global0.x))));
    var var_2 = Struct_1(-u_input.a.x, var_1, u_input.a);
    var_2 = func_2();
    var_2 = func_2();
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 139f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1068f, -375f) * vec3<f32>(-336f, global0.x, global0.x)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1000f, global0.x) + vec3<f32>(global0.x, 742f, 759f)))))));
    var var_0 = ~4294967295u;
    var var_1 = -u_input.a.wx;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x - global0.x), -627f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(exp2(global0.x))), global0.x) - vec3<f32>(_wgslsmith_f_op_f32(trunc(360f)), -2462f, -800f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 1061f, -1410f))));
    var_0 = ~15728u;
    var var_2 = -1i;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(sign(-541f)), global0.x, -1193f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    let var_4 = vec4<i32>(var_1.x, select(u_input.a.x & min(var_1.x, -21320i), 19990i, any(vec2<bool>(false, false)) != true) >> (abs(_wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 107395u, 4294967295u), ~52205u)) % 32u), firstLeadingBit(var_1.x), 25758i);
    let var_5 = func_2().c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2665f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-952f))))))));
}

