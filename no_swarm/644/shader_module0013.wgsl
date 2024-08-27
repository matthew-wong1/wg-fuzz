struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-456f, -437f, 739f);

var<private> global1: array<Struct_4, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<f32> {
    let var_0 = global1[_wgslsmith_index_u32(~(~4294967295u) >> (~(~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 1u, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)))) % 32u), 24u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.c.a.x - global0.x), _wgslsmith_f_op_f32(ceil(242f))) + 1f), 1f) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1032f)), _wgslsmith_f_op_f32(-global0.x)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.a.c.b + vec3<f32>(-328f, -1247f, 850f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a.b.x, var_1.x, 1081f) - vec3<f32>(global0.x, -786f, global0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, var_1.x, -1458f), var_0.a.a.b)))));
    var var_2 = global1[_wgslsmith_index_u32(~25491u | u_input.a, 24u)];
    let var_3 = var_0.a.c;
    return var_3.b;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_5(Struct_2(u_input.b, !any(vec2<bool>(true, true))), vec3<i32>(-arg_0, abs(select(-2147483647i, arg_0, false)) << (4294967295u % 32u), 0i), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 61648u) >> (vec3<u32>(0u, u_input.a, 5508u) % vec3<u32>(32u)), abs(vec3<u32>(4294967295u, 0u, u_input.a))) | vec3<u32>(u_input.a, u_input.a, min(u_input.a, u_input.a) >> (u_input.a % 32u)), vec2<u32>(~firstLeadingBit(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 87706u, 4294967295u), vec4<u32>(u_input.a, u_input.a, 9932u, 1u)) << (select(u_input.a, 61935u, true) % 32u)) | min(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 33884u), vec2<u32>(u_input.a, 0u)))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1597f, -2201f, global0.x))))))));
    var var_1 = select(-vec2<i32>(-1i, arg_0 & var_0.b.x), vec2<i32>(-(~u_input.b), 36135i), vec2<bool>(!((var_0.a.b && var_0.a.b) != false), var_0.a.b));
    var var_2 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.xy) + _wgslsmith_f_op_vec2_f32(-global0.yx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1662f, 874f, global0.x), vec3<f32>(global0.x, -793f, -1010f), true)) - vec3<f32>(global0.x, -793f, global0.x))), vec3<u32>(0u, u_input.a, max(42252u, 27253u)) << (vec3<u32>(var_0.d.x | 22781u, ~u_input.a, 4294967295u << (u_input.a % 32u)) % vec3<u32>(32u)), Struct_1(global0.yy, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 514f, global0.x))), vec3<f32>(-778f, global0.x, 1385f))))), !(!select(!vec2<bool>(var_0.a.b, true), vec2<bool>(var_0.a.b, var_0.a.b), select(vec2<bool>(false, true), vec2<bool>(true, false), false))));
    global1 = array<Struct_4, 24>();
    return var_2.a.a;
}

fn func_1(arg_0: Struct_4) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(1300f)), _wgslsmith_f_op_f32(-arg_0.a.a.b.x)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.c.a.x), _wgslsmith_div_f32(1673f, 504f)))));
    var var_1 = func_2(-10843i);
    var var_2 = arg_0.b.x;
    var_2 = arg_0.b.x;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-2161f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))), -922f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x + var_1.b.x), arg_0.a.c.b.x, var_1.b.x <= 143f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3()).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~u_input.a, ~35090u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.xz))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(917f, _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 9615u, 9654u, var_0.x), vec4<u32>(u_input.a, 0u, 20273u, var_0.x)), 24u)])))));
}

