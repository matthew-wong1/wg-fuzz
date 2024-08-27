struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_5 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 645f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> u32 {
    var var_0 = 1f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2406f);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1203f);
    var var_1 = false;
    let var_2 = 1f;
    return ~0u;
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_5 {
    global0 = 1205f;
    let var_0 = true & arg_1;
    let var_1 = _wgslsmith_add_u32(arg_0, ~u_input.d.x) == ~u_input.d.x;
    let var_2 = vec3<u32>(~26501u, ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0, 6893u, 97411u), vec4<u32>(arg_0, arg_0, arg_0, 59133u)))), 20340u);
    var var_3 = true;
    return Struct_5(true, vec3<bool>(arg_1, any(select(select(vec3<bool>(true, false, true), vec3<bool>(var_0, true, var_1), vec3<bool>(true, true, var_1)), select(vec3<bool>(var_1, var_1, arg_1), vec3<bool>(false, false, arg_1), arg_1), vec3<bool>(arg_1, false, var_1))), !any(!vec4<bool>(var_1, true, true, false))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4) -> Struct_1 {
    let var_0 = arg_0.b;
    let var_1 = func_2(1u, true);
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_u32(u_input.d.x, min(_wgslsmith_add_u32(4294967295u, u_input.d.x), u_input.d.x))), ~abs(abs(vec2<u32>(u_input.d.x, u_input.d.x)) & _wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(u_input.c, u_input.c))), vec2<u32>(min(~u_input.d.x, 36409u), ~u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1792f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -774f), arg_1.a.x))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_1.a.x, 1505f)), arg_1.a.x)), -387f))), Struct_1(min(firstTrailingBit(_wgslsmith_sub_u32(u_input.d.x, 1u)), u_input.d.x)));
    var_2 = Struct_2(Struct_1(var_2.c.x), firstLeadingBit(_wgslsmith_div_vec2_u32(u_input.d ^ var_2.c, var_2.c)) | countOneBits(vec2<u32>(var_2.a.a, _wgslsmith_mod_u32(4294967295u, u_input.c))), _wgslsmith_sub_vec2_u32(u_input.d, firstTrailingBit(vec2<u32>(~u_input.c, 26006u))), _wgslsmith_f_op_f32(sign(arg_1.a.x)), var_2.e);
    var var_3 = select(func_2(32368u, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(1i, u_input.b.x, u_input.b.x)) >= abs(0i)).b.xx, !arg_0.b.xy, select(vec2<bool>(true, !any(vec4<bool>(false, arg_1.b, false, var_0.x))), vec2<bool>(true, all(select(arg_0.b, arg_0.b, vec3<bool>(arg_0.a, true, var_0.x)))), all(vec4<bool>(any(vec4<bool>(var_0.x, arg_0.b.x, arg_1.b, false)), true, false, arg_0.a))));
    return Struct_1(abs(_wgslsmith_mult_u32(4294967295u, ~u_input.d.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = func_2(~arg_0, -841f > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + 501f), _wgslsmith_f_op_f32(614f * -442f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2256f + 107f) - -380f), true)));
    var var_1 = Struct_2(arg_1, u_input.d, ~_wgslsmith_mult_vec2_u32(vec2<u32>(select(arg_0, 0u, false), min(17850u, 4294967295u)), u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1117f, 303f)), _wgslsmith_f_op_f32(f32(-1f) * -591f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(714f + -192f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(3120f + -945f), _wgslsmith_f_op_f32(min(655f, 1195f)), var_0.a)))), Struct_1(~firstTrailingBit(abs(16792u))));
    let var_2 = !(!(!select(!var_0.b.zz, func_2(62465u, var_0.a).b.zz, select(vec2<bool>(var_0.a, false), var_0.b.zx, true))));
    var var_3 = vec2<bool>(!select(true, _wgslsmith_f_op_f32(-var_1.d) < var_1.d, !any(vec4<bool>(var_2.x, false, var_0.b.x, false))), true);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1186f, var_1.d, var_1.d) * vec3<f32>(1323f, 1082f, -387f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, var_1.d, var_1.d)) - vec3<f32>(650f, -304f, 642f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, var_1.d, -821f)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-939f, var_1.d)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(103f)))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(select(_wgslsmith_div_u32(countOneBits(u_input.d.x), reverseBits(u_input.c)), ~u_input.d.x, all(vec3<bool>(true, true, true)))), u_input.d, u_input.d, -578f, func_4((func_1() & 4209u) & countOneBits(~51244u), func_3(func_2(select(0u, 78336u, true), true), Struct_4(vec3<f32>(-961f, 1000f, -1000f), true)), ~(-15916i)));
    var_0 = Struct_2(var_0.e, ~_wgslsmith_add_vec2_u32(~select(u_input.d, vec2<u32>(u_input.d.x, u_input.c), false), u_input.d), vec2<u32>(select(abs(_wgslsmith_div_u32(1u, var_0.c.x)), var_0.a.a, true), 70202u), var_0.d, var_0.e);
    let var_1 = !((!(u_input.d.x < 5243u) && false) != true);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.a, var_0.a.a, var_0.b.x), reverseBits(vec3<u32>(var_0.a.a, 62235u, 0u))) & vec3<u32>(firstTrailingBit(func_1()), ~(var_0.b.x << (18837u % 32u)), func_1()));
}

