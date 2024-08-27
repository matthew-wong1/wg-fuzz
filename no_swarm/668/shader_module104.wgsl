struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(i32(-2147483648), 2147483647i, -54524i, -19460i, 31511i, i32(-2147483648), 2147483647i, 33758i, 17555i, 0i, 8245i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_3(Struct_1(vec2<u32>(94285u, u_input.a), !vec2<bool>(true, 50715u > u_input.a)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-763f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(571f, 1000f)))) * 416f));
    let var_2 = global0[_wgslsmith_index_u32(~select(~(~var_0.a.a.x), var_0.a.a.x, ((113810u <= var_0.a.a.x) && var_0.a.b.x) | var_0.a.b.x), 11u)];
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-371f, var_1, 753f))) - vec3<f32>(-1817f, -1000f, 334f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1, var_1, -164f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, -1036f, 2232f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1)), vec3<bool>(true, false, false)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1, var_1, var_1))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1383f, var_1, -1000f)))))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(func_3()), Struct_1(~(vec2<u32>(arg_0.a.x, 47515u) & firstLeadingBit(vec2<u32>(4294967295u, arg_1))), select(vec2<bool>(true, true), vec2<bool>(u_input.a == u_input.a, arg_0.b.x), !arg_0.b.x)), arg_0, Struct_1(firstLeadingBit(~(arg_0.a >> (arg_0.a % vec2<u32>(32u)))), select(arg_0.b, select(arg_0.b, vec2<bool>(arg_0.b.x, true), arg_0.b.x), !arg_0.b)));
    let var_1 = 4294967295u <= _wgslsmith_sub_u32(87374u, var_0.c.a.x ^ ~(~arg_1));
    return var_0.a.x;
}

fn func_1(arg_0: vec4<i32>) -> vec3<f32> {
    global0 = array<i32, 11>();
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-510f * 1682f), _wgslsmith_f_op_f32(-626f - _wgslsmith_f_op_f32(642f * _wgslsmith_f_op_f32(step(-2275f, -1000f)))), -1302f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(715f, -1000f, 1000f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1015f, 1284f, 589f)))))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(725f, 226f)), _wgslsmith_f_op_f32(func_2(Struct_1(vec2<u32>(u_input.a, u_input.a), vec2<bool>(true, false)), u_input.a)), _wgslsmith_f_op_f32(956f - -681f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(408f, 891f, -1729f) - vec3<f32>(-723f, 908f, -991f)) + vec3<f32>(-720f, -1000f, -1285f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(u_input.b >> (abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(2039f - -1437f))));
    var_0 = vec3<f32>(793f, _wgslsmith_f_op_f32(-var_0.x), 963f);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, var_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -302f), _wgslsmith_f_op_f32(474f * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-1000f * var_0.x)))), firstTrailingBit(vec4<u32>(u_input.a, 0u, ~(~u_input.a), abs(1u))));
}

