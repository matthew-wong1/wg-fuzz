struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7>;

var<private> global1: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(ceil(global1.a.a.x));
    let var_1 = arg_0.a.b;
    var_0 = global1.a.a.x;
    let var_2 = u_input.b;
    var var_3 = Struct_2(arg_0.a);
    return Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f) * _wgslsmith_f_op_f32(-arg_0.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-773f - global1.a.a.x) + _wgslsmith_f_op_f32(max(arg_0.a.a.x, -1000f)))), vec4<bool>((arg_0.a.b.x || var_1.x) || (u_input.a.x < u_input.a.x), !(1u < u_input.b), all(select(global1.a.b, vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, global1.a.b.x, false), vec4<bool>(global1.a.b.x, var_1.x, false, false))), arg_0.a.b.x), vec2<u32>(abs(~u_input.b), global1.a.c.x)));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_mod_i32(-20445i & firstTrailingBit(1i), _wgslsmith_dot_vec2_i32(u_input.a, u_input.a));
    let var_1 = Struct_1(arg_2.a.a, global1.a.b, ~arg_2.a.c);
    var var_2 = 1i;
    var var_3 = ~vec2<u32>(arg_0, 0u);
    var var_4 = !global1.a.b;
    return func_1(arg_2);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> vec2<f32> {
    let var_0 = arg_1.a;
    global1 = func_1(func_1(Struct_2(func_3(22187u, vec2<f32>(var_0.a.x, 1913f), func_3(0u, vec2<f32>(-101f, -1421f), Struct_2(global1.a))).a)));
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    return var_0.a.xy;
}

fn func_2() -> StorageBuffer {
    global1 = Struct_2(global1.a);
    let var_0 = global1.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(global1.a.a.x * var_0.a.x), func_3(~(1u | var_0.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(474f, global1.a.a.x)))), Struct_2(Struct_1(var_0.a, global1.a.b, var_0.c))), var_0.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.a.a.x), global1.a.a.x) + _wgslsmith_f_op_vec2_f32(floor(var_0.a.yx))), var_0.b.xy));
    global1 = func_1(func_3(select(var_0.c.x, ~func_3(u_input.b, vec2<f32>(-1146f, 571f), Struct_2(global1.a)).a.c.x, false), var_1, Struct_2(func_1(Struct_2(global1.a)).a)));
    let var_2 = global1.a.b.x;
    return StorageBuffer(firstTrailingBit(select(4083u, u_input.b, false)), vec3<u32>(u_input.b, 1u, 1u), abs(min(61876u, select(reverseBits(var_0.c.x), u_input.b >> (19980u % 32u), true))), _wgslsmith_dot_vec3_i32(reverseBits(firstTrailingBit(-vec3<i32>(12389i, u_input.a.x, -1i))), ~(-vec3<i32>(2147483647i, 22895i, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(242f + 154f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(367f)), _wgslsmith_f_op_f32(trunc(global1.a.a.x)), true))), global1.a.a.x, _wgslsmith_f_op_f32(global1.a.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -697f), _wgslsmith_f_op_f32(floor(1000f)))), -1121f), vec4<bool>(!global1.a.b.x, false, any(global1.a.b.wz), false), firstTrailingBit(firstTrailingBit(vec2<u32>(0u, u_input.b)) | _wgslsmith_mult_vec2_u32(global1.a.c, vec2<u32>(110879u, 4294967295u))));
    var var_1 = Struct_1(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-303f * _wgslsmith_f_op_f32(-var_0.a.x)), -2045f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -557f), 1f)), select(global1.a.b, select(var_0.b, vec4<bool>(!var_0.b.x, !global1.a.b.x, -1i > u_input.a.x, !global1.a.b.x), false), true), global1.a.c);
    let var_2 = var_0;
    let var_3 = global1.a.c.x;
    global1 = func_1(Struct_2(var_2));
    let var_4 = false;
    let x = u_input.a;
    s_output = func_2();
}

