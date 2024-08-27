struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global2: vec2<f32> = vec2<f32>(1236f, -2458f);

var<private> global3: vec3<bool>;

var<private> global4: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_4 {
    global4 = 3461i;
    let var_0 = vec3<f32>(-613f, _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(300f + _wgslsmith_f_op_f32(global2.x - global2.x))), global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -679f));
    global4 = -1i << (_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(28432u, 62406u, 4294967295u, 0u), vec4<u32>(0u, 27143u, 19448u, 52040u)))), 4294967295u) % 32u);
    let var_1 = false;
    let var_2 = u_input.a;
    return Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.x, 980f))) * vec2<f32>(global2.x, var_0.x)), Struct_1(1u, var_0, var_0.x), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(~67248u, 0u, select(45396u, 1u, false))), 22308u));
}

fn func_1() -> Struct_4 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x))))), -1095f);
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-862f + global2.x) * -1597f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * vec2<f32>(_wgslsmith_f_op_f32(max(var_0.x, global2.x)), _wgslsmith_div_f32(global2.x, 1065f)));
    return func_2();
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>) -> StorageBuffer {
    var var_0 = arg_0.a.b;
    global2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.b.zz, vec2<f32>(-491f, var_0.b.x))) + _wgslsmith_f_op_vec2_f32(round(var_0.b.yy))) + var_0.b.zz) + _wgslsmith_f_op_vec2_f32(-var_0.b.yx))));
    global4 = 1i;
    var_0 = arg_0.a.b;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(350f * arg_0.a.a.x)));
    return StorageBuffer(select(vec4<u32>(1u, ~4294967295u, 0u, var_0.a), ~(~vec4<u32>(arg_0.a.b.a, var_0.a, var_0.a, 1u) | ~vec4<u32>(0u, arg_0.a.c.x, arg_0.a.b.a, 54038u)), false), -(~(~(-vec3<i32>(-26786i, 24792i, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_3(func_1(), global1[_wgslsmith_index_u32(~max(61158u, _wgslsmith_sub_u32(4294967295u, 1u)), 15u)]);
}

