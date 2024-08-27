struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 932f;

var<private> global1: array<Struct_1, 28>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> f32 {
    let var_0 = arg_0.a.b;
    let var_1 = Struct_1(arg_0.a.a >> ((~_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_1, u_input.c), vec3<u32>(u_input.c, 0u, 0u)) & abs(vec3<u32>(arg_1, u_input.a, u_input.c))) % vec3<u32>(32u)), select(arg_0.a.b || all(vec3<bool>(arg_0.a.b, var_0, var_0)), true, !(min(arg_0.a.a.x, -14609i) != arg_0.a.a.x)));
    var var_2 = Struct_2(var_1);
    let var_3 = Struct_3(var_2.a, 39219u, max(~65382u, 4294967295u));
    global1 = array<Struct_1, 28>();
    return _wgslsmith_f_op_f32(-513f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1344f)), _wgslsmith_f_op_f32(abs(969f)))) - -1098f)));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2083f)) - _wgslsmith_f_op_f32(func_3(Struct_2(global1[_wgslsmith_index_u32(u_input.c, 28u)]), u_input.c))), true))));
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(arg_1, 28u)]);
    var var_1 = -1i;
    let var_2 = _wgslsmith_mod_vec2_i32(~vec2<i32>(var_0.a.a.x, var_0.a.a.x), max(vec2<i32>(2147483647i, -_wgslsmith_add_i32(arg_0, var_0.a.a.x)), abs(-vec2<i32>(arg_0, var_0.a.a.x)) & vec2<i32>(var_0.a.a.x, ~(-2147483647i))));
    let var_3 = Struct_3(Struct_1(~(~vec3<i32>(var_0.a.a.x, arg_0, u_input.b)), !any(select(vec2<bool>(true, var_0.a.b), vec2<bool>(true, false), vec2<bool>(var_0.a.b, true)))), _wgslsmith_add_u32(59963u, u_input.a), firstTrailingBit(arg_1));
    return Struct_4(~4294967295u, vec4<bool>((var_3.a.a.x | (i32(-1i) * -2147483647i)) != arg_0, !(select(true, var_3.a.b, true) || var_0.a.b), var_3.a.b, true));
}

fn func_1() -> vec3<i32> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a | _wgslsmith_sub_u32(u_input.c, u_input.a), u_input.c), 28u)];
    let var_1 = Struct_1(vec3<i32>(min(~1i | var_0.a.x, -39040i), u_input.b, ~0i), !any(select(!vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b), !vec2<bool>(var_0.b, var_0.b))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-357f * -1024f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-394f, _wgslsmith_f_op_f32(743f + 305f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1086f + -1012f)))));
    let var_3 = func_2(~u_input.b, _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.a, u_input.c, u_input.c, 4294967295u), vec4<u32>(68063u, 1u, 6218u, 1u)), firstTrailingBit(vec4<u32>(30848u, 7077u, u_input.c, u_input.a))), vec4<u32>(u_input.a << ((u_input.a | u_input.c) % 32u), u_input.c, ~u_input.c, ~1u)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(660f, 1130f, 915f, 777f), vec4<f32>(467f, -1281f, -270f, -260f), false)) * vec4<f32>(1000f, 1000f, 1723f, -484f))))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1697f + 1421f) * 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_2(global1[_wgslsmith_index_u32(var_3.a, 28u)]), 1476u)), 1611f)), -937f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(var_1), var_3.a)))))));
    return countOneBits(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(~func_1(), true));
    var var_1 = any(select(func_2(22596i, u_input.a).b, func_2(u_input.b, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(42119u, 90169u, u_input.c), vec3<u32>(4294967295u, 4294967295u, u_input.c)), vec3<u32>(37813u, u_input.c, 4294967295u))).b, true));
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(1u, 28u)]);
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

