struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_3,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
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

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 27> = array<f32, 27>(-563f, -2034f, 263f, 2319f, -667f, -2276f, 1517f, 529f, -149f, 1021f, -922f, -1184f, 382f, -1615f, 866f, -633f, 702f, 235f, -225f, 211f, 409f, 2687f, -1195f, 557f, -359f, 431f, -1062f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_mod_vec3_u32(~(~(~firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 23386u)))), ~(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.b, u_input.a.x, u_input.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b))) >> (vec3<u32>(u_input.a.x, 41397u | u_input.c, ~4294967295u) % vec3<u32>(32u))));
    let var_1 = global0.x;
    return Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(334f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1354f, global1[_wgslsmith_index_u32(var_0.x, 27u)])))))), Struct_3(~var_0, -855f, vec4<u32>(_wgslsmith_add_u32(firstTrailingBit(23400u), ~4294967295u), ~_wgslsmith_mult_u32(0u, 0u), ~(~u_input.a.x), ~(~u_input.a.x))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec2<f32>) -> u32 {
    let var_0 = Struct_3(~vec3<u32>(arg_1, u_input.b, ~22872u), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 27u)] - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 120301u, arg_1), vec3<u32>(u_input.c, arg_1, arg_1)), 47173u, global0.x), 27u)])), ~vec4<u32>(79444u, 17908u, u_input.a.x, _wgslsmith_mult_u32(abs(arg_1), firstTrailingBit(u_input.c))));
    let var_1 = Struct_2(arg_0, u_input.d.x);
    return _wgslsmith_dot_vec3_u32(abs(var_0.a), _wgslsmith_add_vec3_u32(abs(abs(var_0.a & vec3<u32>(u_input.a.x, 1u, 1u))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_add_u32(arg_1, 33469u), ~arg_1, ~75287u), abs(var_0.c.zyx | var_0.c.yxw))));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_5 {
    var var_0 = func_2();
    return Struct_5(vec2<u32>(_wgslsmith_add_u32(~(~var_0.b.c.x), ~var_0.b.a.x), ~firstTrailingBit(~var_0.b.a.x)), ~u_input.d, var_0.b, Struct_2(func_2().a, _wgslsmith_dot_vec2_i32(-vec2<i32>(6334i, u_input.d.x), u_input.d.yz)), _wgslsmith_mult_u32(~firstLeadingBit(func_3(arg_0.a, 18766u, vec2<f32>(arg_0.a, 1253f))), 38809u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.d.x, ~(-7487i), -(~1i) | -u_input.d.x);
    var var_1 = func_1(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(19299u, 27u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1128f * global1[_wgslsmith_index_u32(4294967295u, 27u)]) - global1[_wgslsmith_index_u32(u_input.a.x, 27u)])), _wgslsmith_dot_vec2_i32(vec2<i32>(min(2147483647i, -2147483647i), i32(-1i) * -11099i), -var_0.yx << (~u_input.a % vec2<u32>(32u)))), _wgslsmith_f_op_f32(min(461f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 27u)] - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 27u)]))))));
    var var_2 = var_1.c;
    var var_3 = global0.wzz;
    let var_4 = abs(~50860u);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.x);
}

