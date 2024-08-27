struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<bool>(true, true, false), 1u, vec2<bool>(false, false), true), Struct_2(-151f));

var<private> global1: array<f32, 9> = array<f32, 9>(-667f, -488f, 1235f, 111f, 758f, 1000f, -521f, 220f, 795f);

var<private> global2: array<Struct_1, 25>;

var<private> global3: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<bool> {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.b, _wgslsmith_add_u32(68304u, global0.a.b), firstTrailingBit(global0.a.b)), ~(vec3<u32>(global0.a.b, global0.a.b, global0.a.b) & vec3<u32>(global0.a.b, 1u, global0.a.b))) & ((abs(global0.a.b) & min(global0.a.b, global0.a.b)) | _wgslsmith_div_u32(4294967295u, 4294967295u)), min(global0.a.b, 92259u & ((4847u ^ global0.a.b) << (_wgslsmith_sub_u32(global0.a.b, 54930u) % 32u))));
    global1 = array<f32, 9>();
    var var_1 = select(vec2<bool>(all(vec3<bool>(all(vec4<bool>(global0.a.c.x, global0.a.a.x, false, global0.a.d)), all(global0.a.a), any(global0.a.a.xy))), global0.a.d), select(select(!select(global0.a.a.xy, global0.a.a.xz, global0.a.c.x), !select(global0.a.a.xz, vec2<bool>(false, false), false), select(global0.a.d, true == global0.a.c.x, true)), select(vec2<bool>(global0.a.b < global0.a.b, any(vec2<bool>(true, global0.a.d))), select(select(vec2<bool>(true, false), vec2<bool>(global0.a.c.x, false), false), vec2<bool>(true, true), false), global0.a.c), global0.a.a.x), !(!(!select(global0.a.a.yy, vec2<bool>(global0.a.c.x, false), global0.a.a.x))));
    global1 = array<f32, 9>();
    let var_2 = !vec3<bool>(!any(!vec4<bool>(var_1.x, var_1.x, true, var_1.x)), any(vec4<bool>(false, true, select(true, var_1.x, false), global0.a.a.x)), !(!select(var_1.x, false, true)));
    return select(select(var_2, var_2, select(vec3<bool>(var_0.x <= 56150u, var_2.x & true, true), var_2, global0.a.a.x)), select(global0.a.a, !vec3<bool>(global0.a.a.x, any(vec4<bool>(true, false, true, var_2.x)), any(vec4<bool>(true, false, var_1.x, global0.a.d))), !var_2.x), true);
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    global2 = array<Struct_1, 25>();
    var var_0 = Struct_3(global0.a, Struct_2(415f));
    global2 = array<Struct_1, 25>();
    var var_1 = Struct_1(!vec3<bool>(!select(var_0.a.c.x, global0.a.c.x, true), true, any(var_0.a.a) || true), ~0u, !(!var_0.a.a.xy), all(func_3()) || false);
    let var_2 = 778f;
    return Struct_3(var_0.a, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1808f) - _wgslsmith_div_f32(var_2, var_2)) * -222f)));
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2(global0.b);
    var var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(~global0.a.b & 41334u, func_2(Struct_2(_wgslsmith_f_op_f32(ceil(var_0.b.a)))).a.b), vec2<u32>(~global0.a.b, ~(var_0.a.b | _wgslsmith_mod_u32(24328u, 1u))));
    global2 = array<Struct_1, 25>();
    var var_2 = vec4<u32>(var_1.x, ~(~abs(0u)), 4294967295u, 4294967295u);
    global3 = countOneBits(~4294967295u);
    return StorageBuffer(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    global1 = array<f32, 9>();
    let x = u_input.a;
    s_output = func_1();
}

