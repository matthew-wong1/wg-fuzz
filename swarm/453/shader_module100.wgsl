struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(35566u, 26u)];
    return vec4<bool>(var_0.b, var_0.b, !(var_0.b & any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, var_0.b, var_0.b), var_0.b))), any(!select(vec3<bool>(false, false, var_0.b), vec3<bool>(var_0.b, false, true), vec3<bool>(var_0.b, var_0.b, true))) | false);
}

fn func_1() -> StorageBuffer {
    global0 = array<Struct_1, 26>();
    let var_0 = !func_2();
    global0 = array<Struct_1, 26>();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1239f - _wgslsmith_f_op_f32(floor(834f))))), global0[_wgslsmith_index_u32(~(~25546u), 26u)], !select(vec4<bool>(all(var_0.zwz), true, false, !var_0.x), !func_2(), false));
    let var_2 = Struct_3(1284f, Struct_1(_wgslsmith_f_op_vec4_f32(var_1.b.a * var_1.b.a), var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-236f, _wgslsmith_f_op_f32(f32(-1f) * -1676f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.c), _wgslsmith_f_op_f32(abs(var_1.b.a.x))))), var_0);
    return StorageBuffer(vec2<u32>(~reverseBits(_wgslsmith_mod_u32(u_input.a, 1u)), u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    var var_0 = _wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(~u_input.b, ~u_input.b, countOneBits(vec4<u32>(49346u, u_input.b.x, u_input.b.x, u_input.b.x))) & u_input.b, ~reverseBits(abs(select(u_input.b, vec4<u32>(1u, u_input.b.x, 4294967295u, 0u), vec4<bool>(false, false, false, false)))));
    var var_1 = global0[_wgslsmith_index_u32(~u_input.a, 26u)];
    var var_2 = true;
    let x = u_input.a;
    s_output = func_1();
}

