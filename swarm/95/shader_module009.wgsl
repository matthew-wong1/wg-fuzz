struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
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

var<private> global0: array<Struct_1, 20>;

var<private> global1: f32 = -980f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 20>();
    let var_0 = -7210i;
    global0 = array<Struct_1, 20>();
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(129f, -1284f)), _wgslsmith_f_op_f32(f32(-1f) * -1066f), true));
    let var_2 = -2147483647i;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1084f, -1121f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1102f * 365f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1196f + -1272f), _wgslsmith_f_op_f32(-1270f * -517f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1169f * 222f))))));
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 20>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -756f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
}

fn func_3(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = vec3<bool>(!(firstLeadingBit(max(u_input.b.x, u_input.b.x)) < ~u_input.c.x), true, true);
    global1 = 187f;
    var_0 = vec3<bool>(!any(!var_0.zx), !var_0.x, var_0.x);
    var var_1 = Struct_2(vec4<bool>(any(vec2<bool>(true, true)), select(var_0.x, any(vec3<bool>(false, var_0.x, false)), any(vec4<bool>(var_0.x, false, true, var_0.x))) || true, all(!(!vec3<bool>(var_0.x, var_0.x, true))), all(!(!vec2<bool>(false, var_0.x)))), Struct_1(42806u, _wgslsmith_sub_u32(u_input.c.x, ~1u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))))), var_0.x, max((_wgslsmith_clamp_vec4_i32(vec4<i32>(-61934i, u_input.e.x, 40655i, u_input.e.x), vec4<i32>(u_input.e.x, -21092i, -3661i, u_input.e.x), vec4<i32>(2147483647i, 1i, 1i, u_input.e.x)) & vec4<i32>(-1i, u_input.e.x, -11859i, 62312i)) >> (vec4<u32>(4294967295u, ~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 40693u, 84020u), vec4<u32>(u_input.d.x, 38108u, 0u, 21868u)), ~72787u) % vec4<u32>(32u)), abs(~vec4<i32>(u_input.e.x, u_input.e.x, 1i, u_input.e.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.d.x), u_input.b) % vec4<u32>(32u)))));
    global0 = array<Struct_1, 20>();
    return Struct_2(var_1.a, global0[_wgslsmith_index_u32(var_1.b.b, 20u)], all(var_1.a.xy), _wgslsmith_mod_vec4_i32(var_1.d, var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -260f;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -906f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-512f * _wgslsmith_f_op_f32(ceil(237f)))) + _wgslsmith_f_op_f32(sign(-814f))));
    var var_1 = func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1721f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1()))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + -1145f), _wgslsmith_f_op_f32(-var_0), var_0 != -834f)))));
    let var_2 = func_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(var_1.b.c.zy, vec2<f32>(var_0, var_1.b.c.x)))))))));
    global0 = array<Struct_1, 20>();
    let var_3 = Struct_1(~0u, _wgslsmith_dot_vec2_u32(min(~(~vec2<u32>(var_1.b.b, u_input.d.x)), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(var_1.b.b, var_2.b.b, 1u)), 0u)), _wgslsmith_mod_vec2_u32(select(vec2<u32>(93766u, 8471u) | vec2<u32>(var_1.b.b, 0u), _wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, u_input.d.yz), true), ~u_input.d.yx ^ u_input.c)), _wgslsmith_f_op_vec3_f32(-var_2.b.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mod_u32(var_2.b.a & var_3.b, _wgslsmith_div_u32(1u, var_1.b.b)), _wgslsmith_mod_u32(min(var_1.b.a, _wgslsmith_mult_u32(0u, var_2.b.a)), ~(~var_1.b.b)), var_3.b));
}

