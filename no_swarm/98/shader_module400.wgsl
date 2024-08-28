struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 18>;

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(1000f), Struct_2(-1120f), Struct_2(170f), Struct_2(-1525f), Struct_2(-1325f), Struct_2(-957f), Struct_2(121f), Struct_2(-1230f), Struct_2(467f), Struct_2(526f), Struct_2(-964f), Struct_2(-1444f), Struct_2(-1000f));

var<private> global2: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(0u, 39517u), vec2<u32>(1u, 1u), vec2<u32>(39134u, 84322u), vec2<u32>(1u, 0u), vec2<u32>(7694u, 0u), vec2<u32>(34141u, 10519u), vec2<u32>(0u, 42068u), vec2<u32>(0u, 108205u), vec2<u32>(0u, 50175u), vec2<u32>(4294967295u, 88594u), vec2<u32>(1u, 11916u), vec2<u32>(1u, 44083u), vec2<u32>(50629u, 0u), vec2<u32>(54330u, 489u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 21952u));

var<private> global3: array<i32, 14>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: i32) -> Struct_2 {
    global2 = array<vec2<u32>, 16>();
    global3 = array<i32, 14>();
    var var_0 = (arg_0 >= _wgslsmith_div_u32(arg_0, u_input.c.x)) != (((_wgslsmith_add_i32(u_input.a.x, 0i) < _wgslsmith_sub_i32(0i, global3[_wgslsmith_index_u32(4294967295u, 14u)])) & (arg_0 == arg_0)) | true);
    global3 = array<i32, 14>();
    return global1[_wgslsmith_index_u32(~0u, 13u)];
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.c.x, 37687u)), ~global2[_wgslsmith_index_u32(u_input.c.x, 16u)]), _wgslsmith_mult_u32(~4294967295u, u_input.c.x)), true);
    global2 = array<vec2<u32>, 16>();
    let var_1 = u_input.c.xxw;
    var var_2 = u_input.c;
    global3 = array<i32, 14>();
    return select(u_input.d.xw, select(u_input.a, u_input.a, var_0.b), vec2<bool>(true, false));
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    global1 = array<Struct_2, 13>();
    var var_0 = ~func_3(func_2(firstTrailingBit(u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2553f, 2023f, -1599f) - vec3<f32>(365f, 1807f, 1033f))), ~u_input.b));
    var var_1 = 66389u;
    global1 = array<Struct_2, 13>();
    let var_2 = vec4<bool>(all(vec2<bool>(true, !(u_input.c.x == 51915u))), !select(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false))), true, true), true, -global3[_wgslsmith_index_u32(u_input.c.x, 14u)] >= (_wgslsmith_sub_i32(min(var_0.x, 15477i), ~(-1i)) ^ min(u_input.b, var_0.x)));
    return StorageBuffer(u_input.c.x, 2147483647i << (_wgslsmith_dot_vec3_u32(select(u_input.c.zzy, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 2884u), arg_0), var_2.zwy), max(vec3<u32>(u_input.c.x, arg_0.x, u_input.c.x), firstLeadingBit(vec3<u32>(u_input.c.x, 4294967295u, arg_0.x)))) % 32u), _wgslsmith_div_u32(1u, abs(48845u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -557f), _wgslsmith_f_op_f32(max(-1103f, -847f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2085f, -521f) + vec2<f32>(-1938f, -640f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(879f, -754f))), vec2<bool>(true == var_2.x, all(vec3<bool>(var_2.x, true, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_add_u32(firstTrailingBit(9327u), ~u_input.c.x), u_input.c.x, 10106u != abs(u_input.c.x));
    global2 = array<vec2<u32>, 16>();
    global0 = array<vec3<bool>, 18>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    global1 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = func_1(vec3<u32>(u_input.c.x, u_input.c.x ^ (~u_input.c.x >> (~36293u % 32u)), max(~4294967295u, 105840u)));
}

