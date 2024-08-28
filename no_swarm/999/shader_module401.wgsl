struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: Struct_2 = Struct_2(0i, 1246f, 277f);

var<private> global2: array<bool, 14> = array<bool, 14>(false, false, false, true, true, false, false, true, false, true, false, false, true, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2) -> f32 {
    global2 = array<bool, 14>();
    global2 = array<bool, 14>();
    global2 = array<bool, 14>();
    var var_0 = u_input.a.x & _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(9430u, 68092u), u_input.a), ~min(~u_input.a, ~vec2<u32>(8064u, 1u)));
    var var_1 = _wgslsmith_f_op_f32(-global1.c);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.b)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: bool, arg_3: bool) -> u32 {
    global1 = Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(arg_1.x, 32u)], arg_0, -7511i, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<i32>(13081i, 2147483647i, global0[_wgslsmith_index_u32(30575u, 32u)], 3443i)) | firstTrailingBit(vec4<i32>(-2147483647i, global1.a, -2147483647i, 2147483647i) & vec4<i32>(0i, 0i, arg_0, 43149i)), -select(vec4<i32>(-1i, -50124i, -25488i, -53569i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 32u)], global1.a, global0[_wgslsmith_index_u32(1u, 32u)]), vec4<i32>(global1.a, u_input.c, arg_0, 15082i)), !vec4<bool>(false, false, global2[_wgslsmith_index_u32(1u, 14u)], true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - global1.c)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), global1.b);
    global2 = array<bool, 14>();
    var var_0 = Struct_2(_wgslsmith_div_i32(u_input.b, global0[_wgslsmith_index_u32(~4294967295u, 32u)]) >> (abs(_wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, u_input.a.x), arg_1.x << (10534u % 32u))) % 32u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-793f * _wgslsmith_f_op_f32(max(global1.c, -240f))) - 225f), -1149f, -1168f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.c, global1.b)) + global1.b))), _wgslsmith_f_op_f32(-global1.c));
    var var_1 = u_input.a.x;
    global0 = array<i32, 32>();
    return _wgslsmith_div_u32(reverseBits(~(~_wgslsmith_mult_u32(u_input.a.x, arg_1.x))), u_input.a.x);
}

fn func_2() -> bool {
    global1 = Struct_2(18967i, _wgslsmith_f_op_f32(f32(-1f) * -284f), global1.c);
    let var_0 = Struct_2(i32(-1i) * -_wgslsmith_mult_i32(min(u_input.c, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), abs(global0[_wgslsmith_index_u32(u_input.a.x, 32u)])), _wgslsmith_f_op_f32(global1.c - global1.c), global1.b);
    var var_1 = select(!select(select(vec4<bool>(global2[_wgslsmith_index_u32(23261u, 14u)], global2[_wgslsmith_index_u32(126u, 14u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 14u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(67767u, 14u)], false, false, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)], true), true), global2[_wgslsmith_index_u32(~u_input.a.x, 14u)]), !select(vec4<bool>(global2[_wgslsmith_index_u32(14809u, 14u)], global2[_wgslsmith_index_u32(11717u, 14u)], global2[_wgslsmith_index_u32(9390u, 14u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(33780u, 14u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(5469u, 14u)], true)), global2[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], true, !global2[_wgslsmith_index_u32(func_3(-2147483647i, u_input.a, true, false), 14u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~37821u, firstTrailingBit(52193u)), 14u)]), false);
    var var_2 = Struct_4(true);
    let var_3 = _wgslsmith_mod_u32(u_input.a.x, u_input.a.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(186f, _wgslsmith_f_op_f32(-574f * _wgslsmith_f_op_f32(-1716f - global1.c)))) - var_0.c) >= var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c))));
    let var_2 = Struct_4(_wgslsmith_mult_i32(1i, global1.a) > global0[_wgslsmith_index_u32(u_input.a.x << (_wgslsmith_mod_u32(u_input.a.x, ~39499u) % 32u), 32u)]);
    var var_3 = vec3<bool>(false, false, var_2.a);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - global1.b) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(!vec2<bool>(var_2.a, var_2.a), i32(-1i) * -1i, Struct_2(~u_input.b, _wgslsmith_f_op_f32(global1.c - -846f), 364f))))));
    var_3 = vec3<bool>(func_2(), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, -2147483647i);
}

